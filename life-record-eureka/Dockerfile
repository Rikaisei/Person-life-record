# 指定基础镜像
FROM java:8

# 镜像的操作指令
ADD target/life-record-eureka-1.0-SNAPSHOT.jar /app/life-record-eureka.jar
CMD ["java", "-Xms128", "-Xmx1024", "-jar", "/app/life-record-eureka.jar"]

# 暴露端口
EXPOSE 9021