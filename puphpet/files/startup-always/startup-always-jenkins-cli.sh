#!/bin/bash


echo "> Restart jenkins"
service jenkins restart
echo "> Restart apache"
service apache2 restart

echo "> Install jenkins CLI"
wget http://localhost:8080/jnlpJars/jenkins-cli.jar
mv jenkins-cli.jar /root/
java -jar /root/jenkins-cli.jar -s http://localhost:8080/ install-plugin checkstyle cloverphp htmlpublisher dry jdepend pmd violations xunit git github greenballs

