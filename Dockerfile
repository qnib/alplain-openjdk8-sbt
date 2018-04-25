ARG DOCKER_REGISTRY=docker.io
FROM ${DOCKER_REGISTRY}/qnib/alplain-openjdk8

ARG SBT_VER=1.1.4
ENV sbt_version ${SBT_VER}
LABEL sbt.version=${SBT_VER}
ENV SBT_HOME=/usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin
RUN wget -qO- "https://github.com/sbt/sbt/releases/download/v${SBT_VER}/sbt-${SBT_VER}.tgz" |tar xfz - -C /usr/local/ \
 && sbt sbtVersion
