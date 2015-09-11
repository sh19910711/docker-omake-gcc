# gcc + omake
FROM debian:jessie

RUN apt-get update -y && apt-get install -y \
  omake \
  bash-completion \
  gcc \
  clang \
  libgamin-dev

RUN useradd -m user
ENV HOME "/home/user"
USER user
WORKDIR $HOME
CMD /bin/bash
