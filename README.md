# logtester

Dead-simple web app that sends a static response after poking it with curl to STDOUT and as HTTP response.

## get the code

```
git clone https://github.com/MarcSchunk/logtester.git
cd logtester
```

Now modify the code in `config.ru`.

# deploy in bosh-lite

```
cf api api.bosh-lite.com
cf login
cf push
```

# deploy to IBM Cloud

```
cf api api.ng.bluemix.net
cf login
cf push mylogtester
```

# invoke the app

Let the test app create a log statement:

```
curl mylogtester.mybluemix.net
```

# Run locally / Development

    bundle
    rackup
    curl localhost:9292
