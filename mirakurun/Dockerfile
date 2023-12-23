FROM chinachu/mirakurun

ENV DEV="make cmake gcc git g++ automake curl wget autoconf build-essential libass-dev libfreetype6-dev libsdl1.2-dev libtheora-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev pkg-config texinfo zlib1g-dev procps less autoconf automake locales"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get -y install $DEV && \
\
# libarib25
\
    cd && \
    git clone https://github.com/stz2012/libarib25 /tmp/libarib25 && \
    cd /tmp/libarib25 && \
    cmake . && \
    make && \
    make install && \
    rm -rf /tmp/libarib25 && \
\
# recdvb
\
    cd && \
    git clone https://github.com/ansanloms/recdvb.git /tmp/recdvb-1.3.3 && \
    cd /tmp/recdvb-1.3.3  && \
    chmod +x ./autogen.sh && \
    ./autogen.sh && \
    ./configure --enable-b25 && \
    make && \
    make install && \
    rm -rf /tmp/recdvb-1.3.3* && \
\
# recpt1
\
    cd && \
    git clone https://github.com/epgdatacapbon/recpt1.git /tmp/recpt1 && \
    cd /tmp/recpt1/recpt1 && \
    ./autogen.sh && \
    ./configure --enable-b25 && \
    make && \
    make install && \
\
# 日本語入力
\
    sed -i -E 's/# (ja_JP.UTF-8)/\1/' /etc/locale.gen && \
    locale-gen && \
    echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
ENV LANG ja_JP.UTF-8
