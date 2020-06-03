#
# secKV-CAP-01-P01_deploy.ps1
#
Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\secKV-CAP-01-P01.parameters.json" -TemplateFile "..\AzureDeployTemplates\key_vault.v1.0.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\secKV-CAP-01-P01.parameters.json" -TemplateFile "..\AzureDeployTemplates\key_vault.v1.0.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop
