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

 - create 2 roles, one for java and one for solr
 - assign the 2 roles to the playbook

After you are done with refactoring run:

```
vagrant destroy -f
vagrant up
ansible-playbook playbook.yml
```
