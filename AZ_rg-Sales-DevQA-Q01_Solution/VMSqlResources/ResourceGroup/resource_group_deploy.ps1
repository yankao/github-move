#
# resource_group_deploy.ps1
#
New-AzResourceGroup -Location "East US" -ResourceGroupName ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Verbose -Force
set-AzResourceGroup -Name  ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Tag @{BA="ENT"; Landscape="PROD"; Solution="Network - Prod(CI1340052)"; OpCo="CAP"}
