<img src="https://travis-ci.org/coderofsalvation/R.cluster.svg?branch=master"/>

# Usage 

Adds R scripts to `/script`, commit, push and then:

* schedule / monitor them in travis-CI.
* plot results using D3 on a github page

> Now in travis-CI: trigger the scripts using the REST-api, or just add schedulers.

# Background

I was wondering how to get a serverless R 'farm' up and running, using popular services.
With little modifications it'll work with other docker-compatible CI services too (__gitlab__, __jenkins__ e.g.).

### Just by pushing R-code to this repo, you'll get:

* no server hassle
* deploy R results to a webpage (see final thoughts below)
* email notifications for scriptfailures
* realtime html-embeddable status-badges: <img src="https://travis-ci.org/coderofsalvation/R.cluster.svg?branch=master"/>
* easy collaboration + maintenance (using git)
* fast rebuilds / installation of R (packages) using tag+branch-based docker-cache

# Async

In case your code is not written async using promises, there's good news: 

* `boot.sh` is able to run R-scripts in parallel.

> Not ideal (hint: promises), but sometimes good enough

# Final thoughts

Use gitlab-ci, it's much faster/easier compared to github <-> travis.
After spending an hour on travis pushing to a gh-page, my conclusion is that it's becoming too hairy.
Gitlab is definately winning here, by combining repo & CI from the start.
