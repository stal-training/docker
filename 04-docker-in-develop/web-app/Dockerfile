FROM python:3.9

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==2.0.1 uWSGI==2.0.19
WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191
USER uwsgi

CMD ["/cmd.sh"]
