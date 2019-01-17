<img src="https://travis-ci.org/coderofsalvation/R.cluster.svg?branch=master"/>

# Usage 

Adds R scripts to `/script` and trigger them in `boot.sh`.

> Now in travis-CI: trigger the scripts using the REST-api, or just add schedulers.

# Background

I was wondering how to get automatic R processes up and running, using popular services.
With little modifications it'll work with other docker-compatible CI services too (__gitlab__, __jenkins__ e.g.).
This will give us the following for free:

* no server hassle
* email notifications for scriptfailures
* realtime html-embeddable status-badges: <img src="https://travis-ci.org/coderofsalvation/R.cluster.svg?branch=master"/>
* easy collaboration + maintenance (using git)

# Async

In case your code is not written async using promises, there's good news: 

* `boot.sh` is able to run R-scripts in parallel.

> Not ideal (hint: promises), but sometimes good enough
