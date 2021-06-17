FROM squidfunk/mkdocs-material:7.1.8

WORKDIR /code

COPY . /code

RUN ls

COPY action.sh /code/action.sh

RUN apk add --no-cache bash && chmod +x /code/action.sh
RUN pip install -r requirements.txt

ENTRYPOINT ["/code/action.sh"]
