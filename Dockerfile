FROM squidfunk/mkdocs-material:7.1.8

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh
RUN pip install -r requirements.txt

ENTRYPOINT ["mkdocs"]

CMD ["gh-deploy"]
