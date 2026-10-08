# 选择一个基础镜像作为运行环境
FROM python:3.13-slim
# 在镜像内切换一个工作目录，后续所有的操作都是基于这个目录来的
WORKDIR /app
# 将项目文件拷贝到镜像的工作目录
# 第一个 “.” 代表当前目录，第二个 “.” 代表镜像的工作目录 
COPY . .

# 安装容器内环境需要的依赖
RUN pip install -r requirements.txt

# 声明对外提供服务的端口是哪个
EXPOSE 8000

# 容器内服务启动命令，每次启动时容器内会自动执行这个命令
CMD ["python3","main.py"]