$rg = 'snowmanresourcegroup'
New-AzResourceGroup -Name $rg -Location westus -Force

New-AzResourceGroupDeployment `
  -Name 'snowmandeployment' `
  -ResourceGroupName $rg `
  -appName 'snowman' `
  -storageAccountName 'snowmanstorage' `
  -servicePlanName 'snowmanserviceplan' `
  -applicationInsightsName 'snowmaninsights' `
  -TemplateFile '01-create-function-app.json' `
  