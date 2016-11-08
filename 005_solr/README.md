# Ansible Solr example

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

## Exercise

Refactor the playbook:

 - Create a separate file for the variables, let's call it `variables.yml`
 - Import `variable.yml` in your playbook.yml
 - Create a separate file for installing Java, let's call it `java.yml`
 - Create a separate file for installing Solr, let's call it `solr.yml`
 - Include `java.yml` and `solr.yml` into the `playbook.yml`.
 - Make the log file size for Solr configurable.
 - Make the log files count for Solr configurable.

After you are done with refactoring run:

```
vagrant destroy -f
vagrant up
ansible-playbook playbook.yml
```
