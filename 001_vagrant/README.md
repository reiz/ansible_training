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


