FROM photon:3.0
  
LABEL authors="rkelly@vmware.com"

ENV TERM linux

WORKDIR /root

# Set terminal. If we don't do this, weird readline things happen.
RUN tdnf install -y unzip && \
    echo quit | openssl s_client -showcerts -servername 192.168.110.200 -connect 192.168.110.200:443 > /etc/ssl/certs/prodcacert.pem && \
    curl -o /vsphere-plugin.zip -J -L -k https://192.168.110.200/wcp/plugin/linux-amd64/vsphere-plugin.zip && \
    unzip /vsphere-plugin.zip -d /usr/local && \
    rm -f /vsphere-plugin.zip && \
    tdnf erase -y unzip && \
    tdnf clean all
CMD /bin/sh
