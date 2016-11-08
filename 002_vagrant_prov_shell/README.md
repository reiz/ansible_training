# Vagrant Shell Provisioning

The Vagrantfile in this directory shows some example configuration.
Run:

```
vagrant up
```

to create the VM from the Vagrantfile. After finishing the process
you should be able to reach the NGinx default website on `http://localhost:8080`.

Destroy the VM with:

```
vagrant destroy -f
```

`-f` is for force mode. That will destroy the VM without asking for confirmation.
