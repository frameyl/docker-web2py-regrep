FROM madharjan/docker-nginx-web2py:2.14.6
MAINTAINER Chris Yang <chris.yang@spirent.com>

ARG VCS_REF

LABEL description="Docker container for Regression Report with Web2py on Nginx" os_version="Ubuntu ${UBUNTU_VERSION}" \
      org.label-schema.vcs-ref=${VCS_REF} org.label-schema.vcs-url="https://github.com/frameyl/docker-web2py-regrep"

RUN pip install beautifulSoup4 requests xlrd pytz xlsxwriter

VOLUME ["/opt/web2py/applications/RegressionReport", "/var/log/nginx"]

CMD ["/sbin/my_init"]

EXPOSE 80 443
