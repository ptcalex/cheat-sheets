
# create ACR
az acr create --resource-group $RESOURCE_GROUP --name $ACR_NAME --sku Basic

# login to ACR
az acr login --name $ACR_NAME

# images shall be tagged with the ACR login server address
# this tag is used for routing when pushing container images to an image registry
az acr list --resource-group $RESOURCE_GROUP --query "[].{acrLoginServer:loginServer}" --output table
ACR_LOGIN_SERVER=
docker tag mcr.microsoft.com/azuredocs/azure-vote-front:v1 $ACR_LOGIN_SERVER/azure-vote-front:v1
docker push $ACR_LOGIN_SERVER/azure-vote-front:v1
