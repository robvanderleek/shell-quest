FROM ubuntu:24.04
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN useradd -ms /bin/bash -G sudo typealot && echo "typealot:joshua" | chpasswd
USER typealot
WORKDIR /home/typealot
COPY --chown=typealot:typealot bashrc /home/typealot/.bashrc
COPY --chown=typealot:typealot banner.txt /home/typealot/.banner.txt
COPY --chown=typealot:typealot start.sh /home/typealot/.start.sh
ENTRYPOINT ["/home/typealot/.start.sh"]
