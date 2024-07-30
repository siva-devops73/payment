FROM           python:3.6
RUN            mkdir /app
WORKDIR        /app
COPY           ./ /app
RUN            pip3.6 install -r requirements.txt
COPY           run.sh .
ENTRYPOINT     ["bash", "run.sh"]