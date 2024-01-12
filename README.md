# fly-mongo
Mongo on top of Fly.io

The app is intended for internal usage inside fly.io network via `mongodb://mymongo.internal:27017`.
To expose to Internet uncomment stuff in `fly.toml`. 
Note there is no any authentication as well as secure connection.

```
$ ./deploy --help
Fly-mongo

Fly.io based mongodb deploy script

Usage:
    ./deploy [OPTIONS]

Options:
    --new               Launch new application using fly.toml template
    --app APP           Application name to use for deploy. Overrides one in toml file
    --image             Mongo image to deploy (default: mongo:latest)
    --allocate-ips      Allocate ip addresses on launch
    --debug             Set bash 'x' option
    --help              Show help message

Examples:
    Deploy new app.
    
        ./deploy --new --app mymongo

    Redeploy. 
        
        ./deploy

Note:
    This script allocates shared ipv4 and ipv6 addresses that cost nothing
    Dedicated ipv4 address costs $2/month
```
