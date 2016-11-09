# Install Docker with Ansible

Create the VMs with:

```
vagrant up
```

This will create this 3 Ubuntu VMs:

 - Ubuntu14
 - Ubuntu15
 - Ubuntu16

Running this playbook will install the newest Docker & Docker Compose version on Ubuntu14

```
ansible-playbook playbook.yml
```

## Exercise 1

Refactor the code for Docker Compose into a separate Ansible role and make the verison of Docker compose configurable in a variable file.

## Exercise 1

Refactor the `docker` role that way that it works seemless on all 3 versions of Ubuntu.
These are the Debian repositories which has to be copied to the server depending on the major distribution number:

```
# Ubuntu 14.04
deb https://apt.dockerproject.org/repo ubuntu-trusty main

# Ubuntu 15.10
deb https://apt.dockerproject.org/repo ubuntu-wily main

# Ubuntu 16.04
deb https://apt.dockerproject.org/repo ubuntu-xenial main
```

Create a new group in the inventory where all 3 Ubuntu servers are part of and use
that group in the playbook to install Docker on all 3 distributions.

## Done

If you are done, destroy the VMs with:

```
vagrant destroy -f
```
