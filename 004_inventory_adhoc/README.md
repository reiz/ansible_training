# Ad-Hoc commands with Ansible

Ansible ist not just good for running playbooks. It is also
a very good tool to run remote commands on existing infrastructrue.

Build up your test infrastructure with:

```
ansible up
```

That will spin up 3 instances. 2 app instances and 1 db instance.
The inventory file in this directory contains the IP addresses with the correct grouping.

Now run this command to see if all instances are up:

```
vagrant multi -m ping -u root
```

If everything works out that will return 3 times pong. Now let's check
how much free RAM we have on each server:

```
vagrant multi -a "free -m" -u root
```

Or how much free disk space we have on each server:

```
vagrant multi -a "df -h" -u root
```

