#
# resource_group_tag.ps1
#
set-AzResourceGroup -Name  ((dir).DirectoryName.Split("\")[-3]).TrimStart("AZ_").Replace("_Solution","") -Tag @{BA="SALES"; Landscape="DEV"; Solution="Azure Platform"; OpCo="CAP"; costcenter=60726}

