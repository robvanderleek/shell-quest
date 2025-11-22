FROM ubuntu:20.04
RUN apt-get update && \
    apt-get -y install wget curl sudo figlet nano vim git gcc make zsh tcsh fish
WORKDIR /root
RUN git clone https://github.com/begeekmyfriend/tash.git && \
    cd tash && make && cp tash /usr/local/bin && \
    echo "/usr/local/bin/tash" >> /etc/shells
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN useradd -ms /bin/bash -G sudo typealot && echo "typealot:tab" | chpasswd
USER typealot
WORKDIR /home/typealot
RUN git clone https://github.com/begeekmyfriend/tash.git
RUN git clone https://gitlab.com/slackermedia/bashcrawl.git
RUN git clone https://github.com/vaniacer/piu-piu-SH.git
RUN git clone https://github.com/brenns10/lsh.git
COPY --chown=typealot:typealot bashrc /home/typealot/.bashrc
COPY --chown=typealot:typealot banner.txt /home/typealot/.banner.txt
COPY --chown=typealot:typealot start.sh /home/typealot/.start.sh
COPY --chown=typealot:typealot cshrc /home/typealot/.cshrc
COPY --chown=typealot:typealot zshrc /home/typealot/.zshrc
COPY --chown=typealot:typealot fish_prompt.fish \
    /home/typealot/.config/fish/functions/fish_prompt.fish
ENTRYPOINT ["/home/typealot/.start.sh"]
