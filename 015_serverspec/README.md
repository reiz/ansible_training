# Vagrant - Serverspec

First of all run this to build up the test infrastructure:

```
vagrant up
```

## Serverspec

Serverspec is a Ruby framework to write unit tests for server configuration.
Please make sure that you have installed Ruby and Gem on your machine!
Install serverspec like this:

```
gem install serverspec
```

To init a new spec directory you can run this command:

```
serverspec-init
```

You don't need to run here, because there is already a spec directory in this directory.
To run the tests execute this:

```
rake spec
```

That will fail because no packages are installed on the servers. Run
the playbook to install the packages:

```
ansible-playbook setup.yml
```

And now run the tests again:

```
rake spec
```

## Excercise

Write more tests for the app1 server:

 - Ensure that `openjdk-8-jdk` is installed
 - Ensure that `git` is installed
 - Ensure that the file `/etc/passwd` exists
 - Ensure that the output of `git --version` contains the string `git version 2.7`

For help check out the [resource types](http://serverspec.org/resource_types.html).

## Done

If you are done, destroy the VMs with:

```
vagrant destroy -f
```
