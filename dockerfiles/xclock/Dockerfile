FROM ubuntu:20.04

RUN apt-get update -qq && apt-get install -y -qq --no-install-recommends --no-install-suggests curl x11-apps && rm -rf /tmp/** && apt-get clean -y -qq


CMD [ "bash", "-c", "xclock" ]