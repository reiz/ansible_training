# Provisioning Profitbricks

For this exercise make sure that you have installed Ansible `2.2.0.0` or higher.
With older Versions of Ansible the Ansible Profitbricks Module doesn't work correctly.

The Profitbricks Ansible Module requires that the [Profitbricks Python SDK](https://devops.profitbricks.com/libraries/python/)
is installed. You can install it like this:

```
sudo pip install profitbricks
```

With this commando you get a list of the current images:

```
profitbricks image list
```

If that doesn't work try this:

```
curl -u USERNAME https://api.profitbricks.com/cloudapi/v3/images?depth=2
```

Replace `USERNAME` with your username at Profitbricks. The output should contain
current bad images from Profitbricks which can be used for provisioning.

## Exercise 1

 - Adjust the `subscription_user` in the provision_green.yml playbook
 - Use the debug module to output the response from the profitbricks module

Run the playbook:

```
ansible-playbook provision_green.yml
```

## Exercise 2

Refactor the playbook that way, that you can provision 3 servers at once.
Add all 3 server to the profitbricks group and wait until all 3 servers are up and running.

## Exercise 3

Refactor the playbook and create a new role `provision_vm`. The code for creating new
VMs and waiting until they are up and running should be a role. Make the number of the
VMs and the name of the datacenter configurable from outside.
