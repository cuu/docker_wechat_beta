FROM debian:bookworm


ENV XMODIFIERS=@im=fcitx QT4_IM_MODULE=fcitx QT_IM_MODULE=fcitx GTK_IM_MODULE=fcitx

RUN apt-get update
RUN apt-get install apt-utils
RUN apt-get install -y fvwm xterm qterminal wget libatomic1 fcitx5 fcitx5-chinese-addons  fcitx5-frontend-* fcitx5-pinyin

RUN apt-get install -y dbus-x11 dbus-daemon

RUN apt-get install -y fonts-arphic-uming

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

ENV LANG en_US.UTF-8 

RUN apt-get install -y libglib2.0-0 libatomic1 libxcomposite1 libxrender1 libxrandr2 libbz2-1.0 zlib1g libc6 libxkbcommon0 libxkbcommon-x11-0 libxcb-glx0 libxcb-randr0 libxcb-render0 libx11-6 libx11-xcb1 libfontconfig1 libfreetype6 libdbus-1-3 libstdc++6 libpcre3 libxext6 libnss3 libnspr4 libxcb-util1 libxau6 libxdmcp6 libexpat1 libuuid1 libpng16-16 libbrotli1 libsystemd0 liblzma5 libzstd1 liblz4-1 libcap2 libgcrypt20 libgpg-error0 

RUN apt-get install -y fonts-noto-cjk
#RUN wget https://github.com/lovechoudoufu/wechat_for_linux/releases/download/wechat-beta_1.0.0.238_amd64/wechat-beta_1.0.0.238_amd64_login.deb

#RUN dpkg -i wechat-beta_1.0.0.238_amd64_login.deb
RUN wget https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb

RUN dpkg -i WeChatLinux_x86_64.deb

COPY ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT ["/usr/local/bin/start.sh"]


