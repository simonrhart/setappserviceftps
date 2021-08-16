# sets the resource within the passed subscription Id to private access and private containers
subscriptionId=$1;
appServiceName=$2;
resourceGroupName=$3
echo "SubscriptionId to process: " $subscriptionId
echo "App Service resource to process: " $appServiceName
echo "App Service resource group name: " $resourceGroupName

# select the subscription.
az account set -s $subscriptionId
 
echo 'Setting Webapp Service:' $appServiceName ' Ftp state to 'Ftps Only''

# set public access to off at the account level.
az webapp config set --name $appServiceName --resource-group $resourceGroupName --ftps-state FtpsOnly -o yaml

echo "Completed"

