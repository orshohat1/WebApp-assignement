try {
    # This function gets a Web App name as a paramter, and returns a creation of new Web App.
    function getWebAppName {
    param ($name)
    az group create -l westus -n MyResourceGroup
    Write-Host 'Created ResourceGroup'
    az group wait --created  --resource-group MyResourceGroup
    az appservice plan create -g MyResourceGroup -n MyPlan
    Write-Host 'Created AppPlan'
    az webapp create -g MyResourceGroup -p MyPlan -n $name
    Write-Host 'Web App name is' $name
}
}
catch { "An error occurred." }
