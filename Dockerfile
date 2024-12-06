FROM jetbrains/writerside-builder:243.21565 as build

ARG INSTANCE=Writerside/ar
RUN mkdir /opt/sources
WORKDIR /opt/sources
ADD . /opt/sources
RUN export DISPLAY=:99 && \
    Xvfb :99 & \
    /opt/builder/bin/idea.sh helpbuilderinspect --source-dir /opt/sources --product $INSTANCE --runner other --output-dir /opt/wrs-output/

FROM httpd:2.4 as http-server
COPY --from=build /opt/wrs-output/ /usr/local/apache2/htdocs/
