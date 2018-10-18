FROM python:3.4

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY ./entrypoint.sh .
COPY ./requirements.txt .
RUN chmod +x entrypoint.sh
RUN pip3 install -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "./entrypoint.sh" ]
