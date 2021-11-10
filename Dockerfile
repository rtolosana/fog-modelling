FROM ubuntu
RUN apt-get -qq update && apt-get -qq install --no-install-recommends -y unzip gnuplot bc openjdk-11-jdk wget\
    && rm -rf /var/lib/apt/lists/*
RUN mkdir output
WORKDIR /output
RUN wget http://www.informatik.uni-hamburg.de/TGI/renew/2.5.1/renew2.5.1base.zip
RUN unzip renew2.5.1base.zip
RUN rm renew2.5.1base.zip
COPY log4j.properties renew2.5.1/config/

COPY shadow-nets/ /output/shadow-nets/.
COPY renew-exp .
COPY simulation-experiments .
RUN mkdir -p 2
RUN mkdir -p 3
RUN mkdir -p 5
RUN mkdir -p 6

CMD ./simulation-experiments
