# Monorepo GitHub Workflows

This directory contains the GitHub Actions workflows for the tether monorepo.

## Monorepo Docker Build and Push Workflow

The `monorepo-docker.yml` workflow replaces the individual Docker workflows that were previously located in each service directory:

- `wrk-ork/.github/workflows/docker.yml`
- `wrk-book/.github/workflows/docker.yml`  
- `app-node/.github/workflows/docker.yml`

### How it Works

1. **Change Detection**: The workflow uses the `dorny/paths-filter` action to detect which services have changed by monitoring specific directory paths:
   - `wrk-ork/**` - Changes in the wrk-ork service
   - `wrk-book/**` - Changes in the wrk-book service
   - `app-node/**` - Changes in the app-node service

2. **Conditional Builds**: Only services with detected changes will have their Docker images built and pushed, improving CI/CD efficiency.

3. **Parallel Execution**: Services that need to be built run in parallel, reducing overall build time.

4. **Build Summary**: A summary job provides a clear overview of which services were built and their status.

### Benefits

- **Efficiency**: Only builds services that have actually changed
- **Resource Optimization**: Reduces unnecessary CI/CD resource usage
- **Centralized Management**: All Docker builds are managed from a single workflow file
- **Consistent Tagging**: All services use the same tagging strategy:
  - `latest` for main branch
  - `development` for dev branch  
  - `alpha` for other branches
  - `{commit-sha}` for all commits
  - `pr-{number}` for pull requests

### Docker Images

The workflow builds and pushes Docker images to GitHub Container Registry (ghcr.io) with the following naming convention:

- `ghcr.io/{repository}/wrk-ork`
- `ghcr.io/{repository}/wrk-book`
- `ghcr.io/{repository}/app-node`

### Triggers

The workflow runs on:
- Push to any branch
- Pull requests to `main` or `master` branches

### Migration from Individual Workflows

The individual service workflows can now be removed as they are replaced by this centralized monorepo workflow. The functionality is identical, but with the added benefit of change detection and conditional building.
