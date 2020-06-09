FROM rocker/geospatial:4.0.0

RUN  install2.r --error -r http://cran.rstudio.com/ \
    doParallel \
    EpiEstim \
    Cairo 

WORKDIR /app

ADD . /app

CMD ["/bin/bash"]

