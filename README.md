# README
This is an example on how to programatically set a Webapp service within a specific subscription Id and resource group to only accept FTPS for deployments. This is using bash and the Azure CLI.

# Usage

For each Azure subscription edit file ./src/updateappservice-specific.sh to add a separate line item for every subscription that you want to update. For example if we have 2 subscriptions:
```
az.cmd login
./appservicecompliance-specific.sh subscriptionId1 appServiceResource1 appServiceResourceGroup1
./appservicecompliance-specific.sh subscriptionId2 appServiceResource2 appServiceResourceGroup2
```

Once you are happy with this file simply run the following from a terminal bash if on Windows will work fine:

```
$ ./src/updateappservice-specific.sh
```




