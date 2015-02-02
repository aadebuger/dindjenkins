FROM jpetazzo/dind
MAINTAINER Allan Espinosa "allan.espinosa@outlook.com"

RUN apt-get update && apt-get clean
RUN apt-get install -q -y unzip
RUN apt-get install -q -y  subversion
RUN apt-get install -q -y git
#RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean
RUN apt-get install -q -y openjdk-7-jdk  && apt-get clean
ADD http://mirrors.jenkins-ci.org/war/1.587/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
~          
