#
# LogicApp_deploy.ps1
#
Test-AzResourceGroupDeployment -TemplateFile ".\appLA_S3F\appLA-S3F-REALSfdc2SdfDeleteAccountContact-ARM.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-2]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateFile ".\appLA_S3F\appLA-S3F-REALSfdc2SdfDeleteAccountContact-ARM.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-2]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

Test-AzResourceGroupDeployment -TemplateFile ".\appLA_S3F\appLA-S3F-REALSfdc2SdfPostAccountProfile-ARM.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-2]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateFile ".\appLA_S3F\appLA-S3F-REALSfdc2SdfPostAccountProfile-ARM.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-2]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop
