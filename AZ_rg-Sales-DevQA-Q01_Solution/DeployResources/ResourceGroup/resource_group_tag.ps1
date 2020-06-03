#
# resource_group_tag.ps1
#
set-AzResourceGroup -Name  ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Tag @{BA="ENT"; Landscape="PROD"; Solution="Network - Prod(CI1340052)"; OpCo="ALCS"}

