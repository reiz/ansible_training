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
is using roles.

If you are done with testing destroy the VM:

```
vagrant destroy -f
```
