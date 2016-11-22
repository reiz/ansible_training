# Dynamic Inventory

Take a look to the `inventory.rb` file and try to understand it.
You can query the Profitbricks API like this:

```
curl --include --request GET --user 'USERNAME:PASSWORD' https://api.profitbricks.com/rest/v2/datacenters
```

Just replace `USERNAME` with your username and `PASSWORD` with your password.

-- LIVE DEMO ---

## Exercise

Build a `setup_docker.yml` playbook which installs Docker on all servers returned by the `inventory.rb` file.
Try to reuse roles you created in previous directories. If you are done you should be able to run:

```
ansible-playbook -i inventory.rb setup_docker.yml
```
