FROM rocker/r-base:3.6.3

RUN apt-get update && \
 apt-get install -y \
   libcurl4-openssl-dev \
   libxml2-dev \
   libxt-dev \
   libcairo2-dev \
   libssl-dev && \
 install2.r --error \
    doParallel \
    EpiEstim \
    Cairo \
    devtools \
    brew

WORKDIR /app

ADD . /app

CMD ["/bin/bash"]

