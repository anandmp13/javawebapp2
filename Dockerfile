
FROM maven:3.5-jdk-8-alpine

EXPOSE 8080

ENV HOME /home/ubuntu/ToDolist/

WORKDIR $HOME

COPY . $HOME

RUN ["mvn", "clean"]
RUN ["mvn", "install"]


CMD ["java","-jar", "/home/ubuntu/ToDolist/target/ToDoList-0.0.1-SNAPSHOT.jar"]
