FROM ubuntu:20.04
RUN apt-get update && \
    apt-get -y install sudo git gcc make zsh fish
WORKDIR /root
RUN git clone https://github.com/begeekmyfriend/tash.git && \
    cd tash && make && cp tash /usr/local/bin && \
    echo "/usr/local/bin/tash" >> /etc/shells
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN useradd -ms /bin/bash -G sudo typealot
USER typealot
WORKDIR /home/typealot
RUN git clone https://github.com/begeekmyfriend/tash.git
COPY --chown=typealot:typealot bashrc /home/typealot/.bashrc
COPY --chown=typealot:typealot banner.txt /home/typealot/.banner.txt
COPY --chown=typealot:typealot start.sh /home/typealot/.start.sh
ENTRYPOINT ["/home/typealot/.start.sh"]
