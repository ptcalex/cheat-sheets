
# create AKS cluster
az aks create \
    --resource-group $RESOURCE_GROUP \
    --name $CLUSTER_NAME \
    --node-count 2 \
    --enable-addons http_application_routing \
    --enable-managed-identity \
    --generate-ssh-keys \
    --node-vm-size Standard_B2s


# link an Azure cluster with kubectl 
az aks get-credentials --name $CLUSTER_NAME --resource-group $RESOURCE_GROUP


# query the Azure DNS zone list
az aks show -g $RESOURCE_GROUP -n $CLUSTER_NAME -o tsv --query addonProfiles.httpApplicationRouting.config.HTTPApplicationRoutingZoneName


# list DNS zone
az network dns zone list --output table

# List all record sets within a DNS zone
az network dns record-set list -g $MC_RESOURCE_GROUP -z $MC_ZONE_NAME --output table


# cleanup resources




