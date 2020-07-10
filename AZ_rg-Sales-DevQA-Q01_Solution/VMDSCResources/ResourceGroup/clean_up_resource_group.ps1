#
# Cleanup_Resource_Group.ps1
#
Test-AzResourceGroupDeployment -TemplateFile "..\AzureDeployTemplates\cleanup_rg.template.json" -Mode Complete -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateFile "..\AzureDeployTemplates\cleanup_rg.template.json" -Mode Complete -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Force -Verbose
