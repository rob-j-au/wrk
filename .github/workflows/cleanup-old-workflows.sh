#!/bin/bash

# Script to remove the old individual Docker workflows
# Run this script from the root of the repository after confirming the monorepo workflow is working

echo "🧹 Cleaning up old individual Docker workflows..."

# Remove old workflow files
OLD_WORKFLOWS=(
    "wrk-ork/.github/workflows/docker.yml"
    "wrk-book/.github/workflows/docker.yml"
    "app-node/.github/workflows/docker.yml"
)

for workflow in "${OLD_WORKFLOWS[@]}"; do
    if [ -f "$workflow" ]; then
        echo "  ❌ Removing $workflow"
        rm "$workflow"
        
        # Remove the .github directory if it's empty
        workflow_dir=$(dirname "$workflow")
        if [ -d "$workflow_dir" ] && [ -z "$(ls -A "$workflow_dir")" ]; then
            echo "  📁 Removing empty directory $workflow_dir"
            rmdir "$workflow_dir"
            
            # Remove parent .github directory if it's empty
            github_dir=$(dirname "$workflow_dir")
            if [ -d "$github_dir" ] && [ -z "$(ls -A "$github_dir")" ]; then
                echo "  📁 Removing empty directory $github_dir"
                rmdir "$github_dir"
            fi
        fi
    else
        echo "  ✅ $workflow already removed or doesn't exist"
    fi
done

echo "✨ Cleanup complete!"
echo ""
echo "📝 Next steps:"
echo "1. Test the new monorepo workflow by making changes to a service"
echo "2. Verify that only the changed service gets built"
echo "3. Commit and push these changes to activate the new workflow"
