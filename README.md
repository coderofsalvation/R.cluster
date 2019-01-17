# Usage 

Adds R scripts to `/script` and trigger them in `boot.sh`.

> Now in travis-CI: trigger the scripts using the REST-api, or just add schedulers.

# Background

This is a serverless way to get automatic R processes up and running.
It uses Travis, instead of going thru the hassle of setting up & maintaining servers.
With little modifications it'll work with other docker-compatible CI services too (__gitlab__, __jenkins__ e.g.).

# Async

In case your code is not written async using promises, there's good news: 

* `boot.sh` is able to run R-scripts in parallel.

> Not ideal (hint: promises), but sometimes good enough
