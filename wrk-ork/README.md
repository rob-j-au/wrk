# wrk-ork

A worker service that acts as an orchestrator for other worker services.

#### Setup

```bash
./setup-config.sh
npm install
```

#### Start Worker

Example Cluster ID: 1

```
CLUSTER_ID=1
```

```
node worker.js --wtype wrk-ork-proc-aggr \
               --env development \
               --cluster $CLUSTER_ID
```

#### View Status

```
cat status/wrk-ork-proc-aggr-${CLUSTER_ID}.json
```

#### Docker

```
docker build -t work-ork .
docker run work-ork worker.js \
                    --wtype wrk-ork-proc-aggr \
                    --env development \
                    --cluster $CLUSTER_ID
```


