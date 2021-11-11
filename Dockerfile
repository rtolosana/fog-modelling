FROM ubuntu:18.04
RUN apt-get -qq update && apt-get -qq install --no-install-recommends -y unzip gnuplot bc openjdk-11-jdk wget\
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /experiments
COPY shadow-nets/ /experiments/shadow-nets
COPY renew-exp /experiments
COPY simulation-experiments /experiments
RUN chmod u+x renew-exp
RUN chmod u+x simulation-experiments
RUN mkdir -p /experiments/2
RUN mkdir -p /experiments/3
RUN mkdir -p /experiments/5
RUN mkdir -p /experiments/6
RUN mkdir /output

RUN wget http://www.informatik.uni-hamburg.de/TGI/renew/2.5.1/renew2.5.1base.zip
RUN unzip renew2.5.1base.zip
RUN rm renew2.5.1base.zip

RUN mv renew2.5.1/ /experiments
COPY log4j.properties /experiments/renew2.5.1/config/

WORKDIR /experiments
CMD ./simulation-experiments
