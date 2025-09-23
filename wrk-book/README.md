# wrk-book

A worker service responsible for managing books. Multiple instances of this worker can run and be registered with the orchestrator.

#### Setup

```bash
./setup-config.sh
npm install
```


#### Start Worker

Example Rack ID: `25d0c2e5-3d14-4975-bddf-b836bdf3842a`

```
RACK_ID=25d0c2e5-3d14-4975-bddf-b836bdf3842a
```

```
node worker.js --wtype wrk-book-rack \
               --env development \
               --debug true \
               --rack $RACK_ID
```

#### View Status

```
cat status/wrk-book-rack-${RACK_ID}.json
```

#### Docker

```
docker build -t wrk-book .

docker run wrk-book worker.js \
                    --wtype wrk-book-rack \
                    --env development \
                    --debug true \
                    --rack $RACK_ID
```