## wrk-compose
This is a docker-compose stack for running the wrk-book, wrk-ork and app-node services with Prometheus and Grafana monitoring.

- https://github.com/rob-j-au/wrk-book
- https://github.com/rob-j-au/wrk-ork
- https://github.com/rob-j-au/app-node
- https://hub.docker.com/r/prom/prometheus
- https://hub.docker.com/r/grafana/grafana



### Usage

#### Create Configuration

```
./setup-config.sh
```

#### Configure Environment


[env/wrk-book.env](env/wrk-book.env)

[env/wrk-ork.env](env/wrk-ork.env)

[env/app-node.env](env/app-node.env)


#### Start Compose Stack

```
docker compose up -d
```

#### View Logs

```
docker compose logs wrk-book
docker compose logs wrk-ork
docker compose logs app-node
```

#### Grafana

```
http://localhost:3001 [admin:admin]
```

#### Stop Compose Stack

```
docker compose down
```

