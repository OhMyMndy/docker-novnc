FROM ubuntu:20.04

RUN apt-get update -qq && apt-get install -y -qq --no-install-recommends --no-install-suggests curl xserver-xorg-core ca-certificates && rm -rf /tmp/** && apt-get clean -y -qq


RUN apt-get update -qq && curl -SsL "https://go.microsoft.com/fwlink/?LinkID=760868" > /tmp/vscode.deb && dpkg -i /tmp/vscode.deb; \
     apt-get install -y -qq --fix-broken &&  apt-get install -y -qq libasound2 && rm -rf /tmp/** && apt-get clean -y -qq


CMD [ "bash", "-c", "code --user-data-dir /root/.vscode && while pgrep code &>/dev/null; do sleep 1; done;" ]