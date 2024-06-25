# 使用官方的 OpenJDK 作为基础镜像
FROM openjdk:17-jdk-alpine

# 设置维护者信息（可选）
LABEL maintainer="vbblszh0338735@163.com"

# 将 jar 包添加到容器中
COPY ./target/springboot1k743-0.0.1-SNAPSHOT.jar app.jar

# 公开端口
EXPOSE 3000

# 运行 jar 包
ENTRYPOINT ["java", "-jar", "/app.jar"]