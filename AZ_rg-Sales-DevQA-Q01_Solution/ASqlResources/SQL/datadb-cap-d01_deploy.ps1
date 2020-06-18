#
# datadb-cap-d01_deploy.ps1
#
Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\datadb-cap-d01.parameters.json" -TemplateFile "..\AzureDeployTemplates\SQLDatabase.v1.0.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\datadb-cap-d01.parameters.json" -TemplateFile "..\AzureDeployTemplates\SQLDatabase.v1.0.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop
