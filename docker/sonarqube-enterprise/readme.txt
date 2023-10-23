mkdir -p /data/sonarqube-ent/postgres/postgresql
mkdir -p /data/sonarqube-ent/postgres/data

mkdir -p /data/sonarqube-ent/sonarqube/{data,conf,logs,extensions}
chmod 777 -R /data/sonar/sonarqube
echo "vm.max_map_count=262144" > /etc/sysctl.conf
sysctl -p

cp SonarQubeAgent-1.2-SNAPSHOT.jar data/sonarqube-ent/sonarqube/conf


################lic############

Company=Unknown
Digest=NotRequired
Edition=Enterprise
EditionLabel=Enterprise
Expiration=2099-01-01
MaxLoc=9223372036854775806
Plugins=abap,cpp,plsql,security,sonarapex,swift,tsql,vbnet,cobol,pli,rpg,vb
Features=*
ServerId=*
Support=false
Type=ny0c

https://www.base64encode.org/

Q29tcGFueT1Vbmtub3duCkRpZ2VzdD1Ob3RSZXF1aXJlZApFZGl0aW9uPUVudGVycHJpc2UKRWRpdGlvbkxhYmVsPUVudGVycHJpc2UKRXhwaXJhdGlvbj0yMDk5LTAxLTAxCk1heExvYz05MjIzMzcyMDM2ODU0Nzc1ODA2ClBsdWdpbnM9YWJhcCxjcHAscGxzcWwsc2VjdXJpdHksc29uYXJhcGV4LHN3aWZ0LHRzcWwsdmJuZXQsY29ib2wscGxpLHJwZyx2YgpGZWF0dXJlcz0qClNlcnZlcklkPSoKU3VwcG9ydD1mYWxzZQpUeXBlPW55MGM=


