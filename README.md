# simple-k8s-deployment
Shows some simple objects that can be used in kubernetes deployments

For simplicity I will use only `default` namespace

Also, I don't use helm charts on purpose. This way the repo demonstrates how to utilize some basic linux commands.

## Getting starated

Set proper values to `dockerconfig.json`

See `apply.sh` file to see how apply specific objects

You can hit `sh apply.sh` it will print yaml files to terminal by default

## Cheat sheet

Check current context `kubectl config current-context`

Apply an object `kubectl apply -f file.yaml`

Delete an object `kubectl delete <object-type> <object-name>`
