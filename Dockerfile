FROM openjdk:11
RUN apt-get -qq update && apt-get -qq install --no-install-recommends -y unzip \
    && rm -rf /var/lib/apt/lists/*
RUN wget http://www.informatik.uni-hamburg.de/TGI/renew/2.5.1/renew2.5.1base.zip
RUN unzip renew2.5.1base.zip
RUN rm renew2.5.1base.zip
RUN cd renew2.5.1
CMD java -jar /renew2.5.1/loader.jar gui
