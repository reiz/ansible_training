# Vagrant Ansible Provisioning

The Vagrantfile in this directory shows an example configuration how to
provision the VM with Ansible instead of Shell. The Vagrantfile is
referencing the playbook.yml in this directory as provsioning script.
Run:

```
vagrant up
```

to create the VM from the Vagrantfile and to run the playbook.yml.
After the process is finished you can login to the VM with

```
vagrant ssh
```

Double check if the NTP process is running:

```
ps -ef | grep ntp
```

If everything worked out you should see the NTPD process running, which
is defined in the playbook.yml.

Now lets run just the provisioning process again, without rebuilding the whole VM.
That can be achieved with this command:

```
vagrant provision
```

That will execute whatever is defined in the `config.vm.provision` section of the
Vagrantfile. As Ansible is idempotent, we should see the output from the Ansible
playbook and see that nothing was changed at this run.

## Exercise

Enhance the playbook.yml and make sure that the `docker.io` package is installed
and the `docker` service is running. Save your changes to the playbook.yml file
and run:

```
vagrant provision
```

to apply your changes to the VM. Login to the VM with `vagrant ssh` and double
check if Docker is up and running with this command:

```
sudo docker info
```
