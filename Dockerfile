FROM python:alpine
RUN pip install shadowsocks
ADD ss.conf ss.conf
ADD server server
ADD start.sh start.sh
RUN chmod +x server
CMD  ["bash","start.sh"]
