FROM screwdrivercd/screwdriver:v0.5.709

RUN cd /usr/src/app && npm install screwdriver-scm-bitbucket@3.4.7
