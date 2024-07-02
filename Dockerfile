FROM tomcat:9.0.90-jdk21-temurin-jammy
RUN apt update 
RUN apt install maven git -y
WORKDIR /home/usr/   
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /usr/local/war
RUN cd  /usr/local/war ; mvn package 
RUN cp /usr/local/war/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/