FROM zizdlp/bigdata_base

WORKDIR /root
# 安装必要的依赖
COPY . .
RUN ./build/mvn -DskipTests clean package
# 设置工作目录
WORKDIR /root