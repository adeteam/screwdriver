FROM screwdrivercd/screwdriver:v0.5.722

RUN mkdir -p /opt/files
COPY files/* /opt/files/

RUN cd /usr/src/app && npm install screwdriver-scm-bitbucket@3.4.8
RUN cp -f /opt/files/pod.yaml.hbs /usr/src/app/node_modules/screwdriver-executor-k8s/config/pod.yaml.hbs