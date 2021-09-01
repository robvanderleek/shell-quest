FROM ubuntu:20.04
RUN useradd -ms /bin/bash typealot
USER typealot
WORKDIR /home/typealot
COPY --chown=typealot:typealot bashrc /home/typealot/.bashrc
