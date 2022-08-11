$rg = 'snowmanresourcegroup'
New-AzResourceGroup -Name $rg -Location westus -Force

New-AzResourceGroupDeployment `
  -Name 'snowmandeployment' `
  -ResourceGroupName $rg `
  -TemplateFile '02-create-function-app.json' `
  -appName 'SnowmanFunctionApp' `
  -storageAccountName 'snowmanstorage' `
  -hostingPlanName 'snowmanserviceplan' `
  -applicationInsightsName 'snowmaninsights'

  