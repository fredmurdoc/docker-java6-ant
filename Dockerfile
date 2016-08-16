FROM openjdk:6

WORKDIR /project

ENV ANT_VERSION 1.9.7
ENV ANT_HOME /opt/ant

RUN ( \
  cd /tmp && \
  curl -L -O http://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
  tar zxf apache-ant-${ANT_VERSION}-bin.tar.gz -C /opt/ && \
  ln -s /opt/apache-ant-${ANT_VERSION} ${ANT_HOME} && \
  rm -f *.gz \
)

ENV PATH ${PATH}:${ANT_HOME}/bin
