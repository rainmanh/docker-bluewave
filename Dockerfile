### https://github.com/theasp/docker-novnc
FROM theasp/novnc
RUN apt-get update && \
    apt-get install -y dosbox && \
    rm -rfv /var/lib/apt/lists/*

ENV RUN_XTERM=no
ENV DISPLAY_WIDTH=1024
ENV DISPLAY_HEIGHT=768

COPY dosbox.conf /app/conf.d/
COPY bluewave/ /root/dos/
