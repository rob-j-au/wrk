# wrk (monorepo)

Documentation for the wrk project.

Original polyrepo docs: https://github.com/rob-j-au/wrk-docs

### Shared Libraries

- https://github.com/rob-j-au/tpl-work-thing
- https://github.com/rob-j-au/wrk-base

### Services

- [wrk-book](wrk-book)
- [wrk-ork](wrk-ork)
- [app-node](app-node)

### Docker

#### Dockerfiles

- [wrk-book](wrk-book/Dockerfile)
- [wrk-ork](wrk-ork/Dockerfile)
- [app-node](app-node/Dockerfile)


#### Github Docker Build & Push Workflow

- [.github/workflows/monorepo-docker.yml](.github/workflows/monorepo-docker.yml)


#### Docker Builds (w /caching)

- https://github.com/rob-j-au/wrk/actions

#### Docker Images

- https://github.com/rob-j-au/wrk/pkgs/container/wrk%2Fwrk-book
- https://github.com/rob-j-au/wrk/pkgs/container/wrk%2Fwrk-ork
- https://github.com/rob-j-au/wrk/pkgs/container/wrk%2Fapp-node

### Docker Compose Stack

- [wrk-compose](wrk-compose)

### Architecture

#### Diagram

![docs/wrk-architecture](docs/wrk-architecture.png)

#### Github Workflow

A workflow that detects which services have changed (wrk-book, wrk-ork, app-node), builds and pushes them to GitHub Container Registry.

![docs/github-pipeline](docs/github-pipeline.png)
