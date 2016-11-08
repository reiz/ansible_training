# Vagrant

[Vagrant](https://www.vagrantup.com/) is tool which makes it very easy
to create and manage VMs. With Vagrant you can describe one or multiple
VMs in a single text file. Vagrant works well together with different
providers like [VirtualBox](https://www.virtualbox.org/wiki/Downloads),
[VMWare](http://www.vmware.com/), [AWS](https://aws.amazon.com/) and many
more. By default it's using VirtualBox. So please make sure that you
installed the current versions of:

 - [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
 - [Vagrant](https://www.vagrantup.com/)

If everything is successfully installed you should be able to run:

```
vagrant --version
```

and get an output similar to:

```
Vagrant 1.8.5
```

## Vagrant Box

A Vagrant Box is something like a base image for a virtual machine.
If you are familiar with Docker, you can compare a Vagrant box to a
Docker base image. There are all kind of Vagrant boxes available on
[Atlas](https://atlas.hashicorp.com/boxes/search), the central registry
for Vagrant boxes. To pull down the Ubuntu Xenial64 box run this command:

```
vagrant box add ubuntu/xenial64
```

This will download the `ubuntu/xenial64` box and store it locally. Now
with this command you can list all local Vagrant boxes:

```
 vagrant box list
```

The output could look similar to this here:

```
coreos-alpha    (virtualbox, 845.0.0)
ubuntu-docker   (virtualbox, 0)
ubuntu/trusty64 (virtualbox, 20161020.0.6)
ubuntu/xenial64 (virtualbox, 20161029.0.0)
ubuntu/xenial64 (virtualbox, 20161104.0.0)
```

You can check which boxes are outdated with this command:

```
vagrant box outdated
```

Old versions can be removed like in this example:

```
vagrant box remove ubuntu/xenial64 --box-version 20161029.0.0
```

The above command would remove the outdated version `20161029.0.0` of the
`ubuntu/xenial64` box.

## Vagrant init & up

By running this command:

```
vagrant init ubuntu/xenial64
```

Vagrant will output a Vagrantfile into the current directory.
A Vagrantfile describes one or multiple virtual machines.
The generated Vagrantfile is a very simple example with many comments in it.
It descrbes 1 virtual machines which is bade on the ubuntu/xenial64 box.
The VM can be started like that:

```
vagrant up
```

The `vagrant up` command takes the `Vagrantfile` in the current directory
and executes it. Running this command the very first time means that the
Vagrant box which is referenced in the Vagrantfile will be downloaed if it
is not locally available. After that the VM will be provisioned like described
in the Vagrantfile.

If everything worked the VM is up and running after a couple minutes. With
this command we can see the running instances:

```
vagrant status
```

The output should show something similar to:

```
Current machine states:

default                   running (virtualbox)

The VM is running. To stop this VM, you can run `vagrant halt` to
shut it down forcefully, or you can run `vagrant suspend` to simply
suspend the virtual machine. In either case, to restart it again,
simply run `vagrant up`.
```

With this command we can login to the instance:

```
vagrant ssh
```

