#
# datacapstoragep01_deploy.ps1
#
Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\datacapstoragep01.parameters.json" -TemplateFile "..\AzureDeployTemplates\storage.v3.1.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\datacapstoragep01.parameters.json" -TemplateFile "..\AzureDeployTemplates\storage.v3.1.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop
