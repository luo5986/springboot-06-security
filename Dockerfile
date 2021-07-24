FROM java:8
# 项目在容器内部运行的端口
EXPOSE 9000

VOLUME /tmp
ADD /target/springboot-06-security.jar /app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]
