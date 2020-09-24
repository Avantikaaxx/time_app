FROM python:3.6.9

RUN groupadd -g 799 avantikaaxx && \
useradd -r -u 999 -g avantikaaxx avantikaaxx

WORKDIR /usr/src/app

RUN pip install Flask

USER avantikaaxx 

COPY --chown=avantikaaxx:avantikaaxx . .

CMD [ "python", "./script.py" ]
