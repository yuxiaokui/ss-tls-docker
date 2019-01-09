FROM python:alpine
RUN pip install shadowsocks
ADD ss.conf ss.conf
ADD server server
RUN chmod +x server
CMD  ["run.sh"]
