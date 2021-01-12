FROM debian:9

# apt-get and system utilities
RUN apt-get update && apt-get install -y \
	curl apt-transport-https debconf-utils gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# adding custom MS repository
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/9/prod.list > /etc/apt/sources.list.d/mssql-release.list

# Add RClone (instal curl if not exist)
RUN apt-get update && apt-get install && apt-get install busybox -y \
	&& curl https://rclone.org/install.sh | bash \
    && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.utf8
RUN echo "Asia/Ho_Chi_Minh" > /etc/timezone

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]