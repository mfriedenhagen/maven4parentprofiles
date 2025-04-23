#!/usr/bin/env sh

mvn -s settings.xml -f companypom.pom install
mvn -s settings.xml -f teampom.pom install
