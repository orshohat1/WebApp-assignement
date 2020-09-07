
function getWebAppName {
    param ($name)
    az group create -l westus -n MyResourceGroup
    az group wait --created  --resource-group MyResourceGroup
    az appservice plan create -g MyResourceGroup -n MyPlan
    az webapp create -g MyResourceGroup -p MyPlan -n $name
    Write-Output web app name is $name
}