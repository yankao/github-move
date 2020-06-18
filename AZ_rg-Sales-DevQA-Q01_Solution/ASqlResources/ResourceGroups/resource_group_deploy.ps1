#
# resource_group_deploy.ps1
#
New-AzResourceGroup -Location "East US" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Tag @{BA="SALES"; Landscape="DEV"; Solution="Azure Platform"; OpCo="CAP"; costcenter=60726} -Verbose -Force
