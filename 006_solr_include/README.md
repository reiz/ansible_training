# Ansible Solr example with includes

Run:

```
vagrant up
```

to create the VM for the playbook. Than run:

```
ansible-playbook playbook.yml
```

to start the Play. That will install Java on the VM and download and install Solr.
After the Play is finished you should be able to see the Solr Admin interface
under `http://192.168.60.2:8983`.

This playbook is doing the same as the previous example, but this playbook
is using includes.

## Exercise

Refactor the playbook:

 - create a role for java
 - create a role for solr
 - copy the `log4j.properties` file to the server to `/var/solr/log4j.properties` and notify solr restart.

Content of `log4j.properties`:

```
#  Logging level
solr.log=${solr.solr.home}/../logs
log4j.rootLogger=INFO, file, CONSOLE

log4j.appender.CONSOLE=org.apache.log4j.ConsoleAppender

log4j.appender.CONSOLE.layout=org.apache.log4j.EnhancedPatternLayout
log4j.appender.CONSOLE.layout.ConversionPattern=%-4r %-5p (%t) [%X{collection} %X{shard} %X{replica} %X{core}] %c{1.} %m%n

#- size rotation with log cleanup.
log4j.appender.file=org.apache.log4j.RollingFileAppender
log4j.appender.file.MaxFileSize=6MB
log4j.appender.file.MaxBackupIndex=11

#- File to log to and log format
log4j.appender.file.File=${solr.log}/solr.log
log4j.appender.file.layout=org.apache.log4j.EnhancedPatternLayout
log4j.appender.file.layout.ConversionPattern=%d{yyyy-MM-dd HH:mm:ss.SSS} %-5p (%t) [%X{collection} %X{shard} %X{replica} %X{core}] %c{1.} %m%n

log4j.logger.org.apache.zookeeper=WARN
log4j.logger.org.apache.hadoop=WARN

# set to INFO to enable infostream log messages
log4j.logger.org.apache.solr.update.LoggingInfoStream=OFF
```

After you are done with refactoring run:

```
vagrant destroy -f
vagrant up
ansible-playbook playbook.yml
```
