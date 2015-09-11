# gcc + omake
FROM debian:jessie

RUN apt-get update -y && apt-get install -y \
  omake \
  gcc \
  libgamin-dev

RUN useradd user
USER user
CMD /bin/bash
