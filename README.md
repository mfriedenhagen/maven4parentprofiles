= File based profile activation different between Maven 3.9.x and Maven 4

== Preparation
```
mvn -s settings.xml -f companypom.pom install
mvn -s settings.xml -f teampom.pom install
```

== Test

=== help:active-profiles

* With Maven 4 no active profiles are shown at all

```
❯ mvn -V -B -s settings.xml help:active-profiles
Apache Maven 3.9.9 (8e8579a9e76f7d015ee5ec7bfcdc97d260186937)
Maven home: /opt/homebrew/Cellar/maven/3.9.9/libexec
Java version: 21.0.7, vendor: Eclipse Adoptium, runtime: /Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home
Default locale: de_DE, platform encoding: UTF-8
OS name: "mac os x", version: "15.4.1", arch: "aarch64", family: "mac"
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] maven4parentprofiles                                               [pom]
[INFO] module1                                                            [jar]
[INFO] 
[INFO] -------< com.example.maven4parentprofiles:maven4parentprofiles >--------
[INFO] Building maven4parentprofiles 1.0-SNAPSHOT                         [1/2]
[INFO]   from pom.xml
[INFO] --------------------------------[ pom ]---------------------------------
[INFO] 
[INFO] --- help:3.5.1:active-profiles (default-cli) @ maven4parentprofiles ---
[INFO] 
Active Profiles for Project 'com.example.maven4parentprofiles:maven4parentprofiles:pom:1.0-SNAPSHOT':

The following profiles are active:




Active Profiles for Project 'com.example.maven4parentprofiles:module1:jar:1.0-SNAPSHOT':

The following profiles are active:

 - ant-runner-teampom (source: com.example:teampom:1.0)
 - ant-runner-companypom (source: com.example:companypom:1.0)



[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary for maven4parentprofiles 1.0-SNAPSHOT:
[INFO] 
[INFO] maven4parentprofiles ............................... SUCCESS [  0.057 s]
[INFO] module1 ............................................ SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.187 s
[INFO] Finished at: 2025-04-22T11:50:24+02:00
[INFO] ------------------------------------------------------------------------```
```

=== Maven 4

```
❯ ~/Downloads/apache-maven-4.0.0-rc-4-SNAPSHOT/bin/mvn -V -B -s settings.xml help:active-profiles
Apache Maven 4.0.0-rc-4-SNAPSHOT (bbb20a5c13fac6020c72804d1e2eb48e8caff056)
Maven home: /Users/USER/Downloads/apache-maven-4.0.0-rc-4-SNAPSHOT
Java version: 21.0.7, vendor: Eclipse Adoptium, runtime: /Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home
Default locale: de_DE, platform encoding: UTF-8
OS name: "mac os x", version: "15.4.1", arch: "aarch64", family: "mac"
[INFO] Scanning for projects...
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] maven4parentprofiles                                                                                                 [pom]
[INFO] module1                                                                                                              [jar]
[INFO] 
[INFO] --------------------------------< com.example.maven4parentprofiles:maven4parentprofiles >---------------------------------
[INFO] Building maven4parentprofiles 1.0-SNAPSHOT                                                                           [1/2]
[INFO]   from pom.xml
[INFO] ---------------------------------------------------------[ pom ]----------------------------------------------------------
[INFO] 
[INFO] --- help:3.5.1:active-profiles (default-cli) @ maven4parentprofiles ---
[INFO] 
Active Profiles for Project 'com.example.maven4parentprofiles:maven4parentprofiles:pom:1.0-SNAPSHOT':

The following profiles are active:




Active Profiles for Project 'com.example.maven4parentprofiles:module1:jar:1.0-SNAPSHOT':

The following profiles are active:




[INFO] Copying com.example.maven4parentprofiles:maven4parentprofiles:pom:1.0-SNAPSHOT to project local repository
[INFO] Copying com.example.maven4parentprofiles:maven4parentprofiles:pom:consumer:1.0-SNAPSHOT to project local repository
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Reactor Summary for maven4parentprofiles 1.0-SNAPSHOT:
[INFO] 
[INFO] maven4parentprofiles ................................................................................. SUCCESS [  0.098 s]
[INFO] module1 .............................................................................................. SKIPPED
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Total time:  0.430 s
[INFO] Finished at: 2025-04-22T11:52:33+02:00
[INFO] --------------------------------------------------------------------------------------------------------------------------
```
