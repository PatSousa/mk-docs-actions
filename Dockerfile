FROM squidfunk/mkdocs-material:7.1.8

WORKDIR /

COPY . /

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
