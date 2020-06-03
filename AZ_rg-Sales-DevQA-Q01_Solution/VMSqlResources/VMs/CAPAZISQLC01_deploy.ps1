#
# CAPAZISQLC01_deploy.ps1
#
Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_NICs.v2.3.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_NICs.v2.3.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_vmaccess.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_vmaccess.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_win_script.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_win_script.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_joindomain.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_joindomain.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

Test-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_update.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateParameterFile "..\AzureDeployParameters\CAPAZISQLC01.parameters.json" -TemplateFile "..\AzureDeployTemplates\virtual_machine_update.v2.2.deploy.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop
