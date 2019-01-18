## Starts with the miniscule alpine image, installs R, patches and installs httpuv, adds devtools and cleans up

FROM artemklevtsov/r-alpine:tidyverse

MAINTAINER Leon van Kammen <leonvankammen@gmail.com>

ADD . / /

RUN apk add --no-cache git git-subtree openssh-client

#RUN apk add --no-cache R gcc g++ git coreutils bash ncurses
#RUN apk add --no-cache R R-dev R-doc gcc g++ git coreutils bash ncurses
#RUN git clone https://github.com/ropensci/git2r.git &&\
#  R CMD INSTALL --configure-args="--with-libssl-include=/usr/lib/" git2r &&\
#  rm -rf git2r /tmp/*
#RUN R -q -e "install.packages(c('tidyverse','devtools', 'covr', 'roxygen2', 'testthat'), repos = 'https://cloud.r-project.org/')"

RUN rm -rf /tmp/* && chmod 755 ./boot.sh

CMD ["./boot.sh"]
