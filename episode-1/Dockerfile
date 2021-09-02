FROM ubuntu:20.04
RUN apt-get update && \
    apt-get -y install sudo git gcc make zsh fish
WORKDIR /root
RUN git clone https://github.com/begeekmyfriend/tash.git && \
    cd tash && make && cp tash /usr/local/bin && \
    echo "/usr/local/bin/tash" >> /etc/shells
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN useradd -ms /usr/local/bin/tash -G sudo typealot
USER typealot
WORKDIR /home/typealot
RUN git clone https://github.com/begeekmyfriend/tash.git
COPY --chown=typealot:typealot bashrc /home/typealot/.bashrc
