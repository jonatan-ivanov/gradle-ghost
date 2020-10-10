FROM ubuntu

RUN apt-get update && apt-get install -y git curl

# ADD . /root/.gradle-ghost
# RUN apt-get update && apt-get install -y git curl && ln -s /root/.gradle-ghost/bin/grg /usr/local/bin/grg
