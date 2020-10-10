# This file is only for testing purposes so that you can simulatedifferent environments for Gradle Ghost
FROM ubuntu

RUN apt-get update && apt-get install -y git curl

ADD . /root/.gradle-ghost
RUN ln -s /root/.gradle-ghost/bin/grg /usr/local/bin/grg
