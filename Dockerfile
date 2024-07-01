FROM ubuntu:18.04
RUN apt update ; apt install default-jdk -y
RUN apt install tomcat9 -y
EXPOSE 8080
RUN apt install maven -y ; apt install git -y   
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /usr/local/tomcat/projekt/boxfuse-sample-java-war-hello ;
RUN cd  /usr/local/tomcat/projekt/boxfuse-sample-java-war-hello ; mvn package -X
RUN cp /usr/local/tomcat9/projekt/target/boxfuse-sample-java-war-hello/hello-1.0.war /var/lib/tomcat9/webapps/
CMD /opt/tomcat/bin/run.s