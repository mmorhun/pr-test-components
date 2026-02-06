FROM registry.access.redhat.com/ubi9/go-toolset:1.22.9-1738267444

USER 0
RUN groupadd myusergroup && \
    useradd -u 1000 -g myusergroup -s /bin/sh -d /home/myuser myuser && \
    chown -R 1000:myusergroup /home/myuser && \
    chmod -R 770 /home/myuser

USER myuser
ENV HOME=/home/myuser
RUN mkdir -p $HOME/test/subdir

CMD ["ls"]
