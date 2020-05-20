#
# LogicApp_deploy.ps1
#
Test-AzResourceGroupDeployment -TemplateParameterFile ".\LogicApp.parameters.json" -TemplateFile ".\LogicApp-Copy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-2]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile ".\LogicApp.parameters.json" -TemplateFile ".\LogicApp-Copy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-2]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop
