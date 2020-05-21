#
# appLA-S3F-BULKSdf2SfdcActivities-D01-CD_deploy.ps1
#
Test-AzResourceGroupDeployment -TemplateFile "..\appLA_S3F\appLA-S3F-BULKSdf2SfdcActivities-D01-CD.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop

New-AzResourceGroupDeployment -TemplateFile "..\appLA_S3F\appLA-S3F-BULKSdf2SfdcActivities-D01-CD.json" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -ErrorAction Stop
