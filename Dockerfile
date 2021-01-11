FROM ubuntu:20.04

# Install git, supervisor, VNC, & X11 packages
RUN apt-get update &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -y -qq --no-install-recommends \
      bash \
      # fluxbox \
      openbox \
      # i3 \
      # rofi \
      tint2 \
      # git \
      net-tools \
      novnc \
      supervisor \
      xterm \
      'tigervnc*' && \
    rm -rf /tmp/** && \
    apt-get clean -y

# Setup demo environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768 \
    RUN_XTERM=yes \
    RUN_FLUXBOX=yes

COPY . /app
COPY .fluxbox /root/.fluxbox/
#COPY .vnc /root/.vnc/

CMD ["/app/entrypoint.sh"]
EXPOSE 8080
