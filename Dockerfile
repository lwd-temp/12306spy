FROM python:3.12
# 当前的文件都放到app文件夹下
ADD . /app

ENV LANG C.UTF-8

WORKDIR /app
RUN /usr/local/bin/pip3 install -r requirements.txt

EXPOSE 7456

# 设置默认端口为7456
ENV HTTP_PORT 7456

# 如果有传入httpport参数，则使用传入的端口
ENTRYPOINT ["python", "main.py", "--port", "$HTTP_PORT"]