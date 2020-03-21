FROM alpine 

RUN wget https://github.com/wayofthepie/gram-cli/releases/download/0.1.0/gram-linux-x86 \
    && mv gram-linux-x86 /usr/local/bin/gram \
    && chmod u+x /usr/local/bin/gram 

ENTRYPOINT ["gram"]
