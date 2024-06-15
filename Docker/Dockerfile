FROM python:3.8.19-slim-bookworm

# 设置工作目录
WORKDIR /

#RUN mkdir -p /etc/apt/backup && \    
#    mv /etc/apt/sources.list.d/debian.sources /etc/apt/backup/ && \
#    echo "deb http://mirrors.aliyun.com/debian/ bookworm main non-free non-free-firmware" > /etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/debian/ bookworm-updates main non-free contrib" >> /etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/debian/ bookworm-backports main non-free contrib" >> /etc/apt/sources.list 

# 复制应用程序代码到工作目录
#COPY app /app
#copy start.sh .
# 安装系统依赖
RUN apt update 
RUN apt install mesa-utils libglib2.0-0 -y

# 复制 requirements.txt 文件并安装依赖
ADD app /
ADD requirements.txt /
ADD start.sh /
RUN pip install -r requirements.txt  #a-i https://mirrors.aliyun.com/pypi/simple/

# 安装 Flask 和 Gunicorn
RUN pip install gunicorn


RUN chmod +x /start.sh

# 运行应用程序
CMD ["/start.sh"]
