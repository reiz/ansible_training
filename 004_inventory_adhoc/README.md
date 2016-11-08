# Ad-Hoc commands with Ansible

Ansible ist not just good for running playbooks. It is also
a very good tool to run remote commands on existing infrastructrue.

Build up your test infrastructure with:

```
vagrant up
```

That will spin up 3 instances. 2 app instances and 1 db instance.
The inventory file in this directory contains the IP addresses with the correct grouping.

Now run this command to see if all instances are up:

```
ansible multi -m ping -u root
```

If everything works out that will return 3 times pong. Now let's check
how much free RAM we have on each server:

```
ansible multi -a "free -m" -u root
```

Or how much free disk space we have on each server:

```
ansible multi -a "df -h" -u root
```

Or let's copy a file to ALL servers:

```
ansible multi -m copy -a "src=/etc/hosts dest=/tmp/hosts" -u root
```

Or let's install ufw only on the DB server:

```
ansible dbs -m apt -a "name=ufw state=present" -u root
```

