FROM rajesh2887/omdbapi:version1

MAINTAINER rajeshche@hcl.com

COPY movieinfo.sh /

RUN chmod 755 /movieinfo.sh

ENTRYPOINT ["./movieinfo.sh"]
