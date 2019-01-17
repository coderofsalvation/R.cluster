<img src="https://travis-ci.org/coderofsalvation/R.cluster.svg?branch=master"/>

# Usage 

Adds R scripts to `/script`, commit, push and then:

* schedule / monitor them in travis-CI.
* plot results using D3 on a github page

> Now in travis-CI: trigger the scripts using the REST-api, or just add schedulers.

# Background

I was wondering how to get an serverless R 'farm' up and running, using popular services.
With little modifications it'll work with other docker-compatible CI services too (__gitlab__, __jenkins__ e.g.).
This will give us the following for free:

* no server hassle
* email notifications for scriptfailures
* realtime html-embeddable status-badges: <img src="https://travis-ci.org/coderofsalvation/R.cluster.svg?branch=master"/>
* easy collaboration + maintenance (using git)
* fast rebuilds / installation of R (packages) using tag+branch-based docker-cache

# Async

In case your code is not written async using promises, there's good news: 

* `boot.sh` is able to run R-scripts in parallel.

> Not ideal (hint: promises), but sometimes good enough
