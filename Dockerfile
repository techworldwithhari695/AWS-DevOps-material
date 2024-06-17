FROM centos
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install java -y
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz /opt/tomcat
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.89/* /opt/tomcat
WORKDIR /opt/tomcat/webapps
RUN curl -O -L http://csci.viu.ca/~barskym/teaching/DM2012/labs/LAB6/Lab6A.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
