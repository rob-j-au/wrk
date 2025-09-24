# app-node

This service facilitates communication between the user interface (frontend) and the worker services.

#### Setup

```bash
./setup-config.sh
npm install
```

#### Start Worker

```
node worker.js --wtype wrk-node-http \
               --env production \
               --port 3000
```


#### Docker


```
docker build -t app-node .

docker run app-node worker.js \
                    --wtype wrk-node-http \
                    --env production \
                    --port 3000
```


