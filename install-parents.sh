#!/bin/sh -e
export MAVEN_SKIP_RC=yes
mvn -s settings.xml -q -f companypom.pom install
mvn -s settings.xml -q -f teampom.pom install
