#!/bin/bash

echo "> Install jenkins"

sudo -s 
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
aptitude update -y
aptitude install jenkins -y

echo "> Install jenkins related projects"

echo "> Install ant"
apt-get install ant -y

echo "> Install pdepend"
wget http://static.pdepend.org/php/latest/pdepend.phar --quiet
chmod +x pdepend.phar
mv pdepend.phar /usr/local/bin/pdepend

echo "> Install phpmd"
wget http://static.phpmd.org/php/latest/phpmd.phar --quiet
chmod +x phpmd.phar
mv phpmd.phar /usr/local/bin/phpmd

echo "> Install phpDocumentor"
wget http://phpdoc.org/phpDocumentor.phar --quiet
chmod +x phpDocumentor.phar
mv phpDocumentor.phar /usr/local/bin/phpDocumentor

echo "> Install phpunit"
wget https://phar.phpunit.de/phpunit.phar --quiet
chmod +x phpunit.phar
mv phpunit.phar /usr/local/bin/phpunit

echo "> Install phpcpd"
wget https://phar.phpunit.de/phpcpd.phar --quiet
chmod +x phpcpd.phar
mv phpcpd.phar /usr/local/bin/phpcpd

echo "> Install phploc"
wget https://phar.phpunit.de/phploc.phar --quiet
chmod +x phploc.phar
mv phploc.phar /usr/local/bin/phploc

echo "> Install phpcb"
wget https://github.com/mayflower/PHP_CodeBrowser/blob/master/bin/phpcb --quiet
chmod +x phpcb
mv phpcb /usr/local/bin/phpcb

echo "> Install phpcs"
wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar --quiet
chmod +x phpcs.phar
mv phpcs.phar /usr/local/bin/phpcs


#echo "> Restart jenkins"
#service jenkins restart
#echo "> Restart apache"
#service apache2 restart

#echo "> Install jenkins CLI"
#wget http://localhost:8080/jnlpJars/jenkins-cli.jar
#mv jenkins-cli.jar /root/
#java -jar /root/jenkins-cli.jar -s http://localhost:8080/ install-plugin checkstyle cloverphp htmlpublisher dry jdepend pmd violations xunit git github greenballs

