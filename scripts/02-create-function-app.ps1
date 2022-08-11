$rg = 'snowman74resourcegroup'
New-AzResourceGroup -Name $rg -Location westus -Force

New-AzResourceGroupDeployment `
  -Name 'snowman74deployment' `
  -ResourceGroupName $rg `
  -TemplateFile '02-create-function-app.json' `
  