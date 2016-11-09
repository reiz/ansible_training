# Ansible Facts and Debug

Create a new VM with:

```
vagrant up
```

By default ansible is running the setup module on every server to gather facts about the server.
These facts are available as global variables during the Play. The setup module can be executed
manually as well. Run it manullay like this to see the output:

```
ansible f1 -m setup -u root
```

The facts can be accessed as regular variables during every Play. Use the debug module
to output them. Take a look to the playbook.yml in this directory and run it:

```
ansible-playbook playbook.yml
```

## Exercise

Extend the playbook and output this facts:

 - Major version of the operating system
 - Number of CPUs
 - Amount of total RAM
 - Hostname
