###### Make sure the AD recyclebin is enabled ######

$Name=read-host "Enter the deleted user"
Get-ADObject -Filter 'samaccountname -eq $name' -IncludeDeletedObjects | Restore-ADObject
write-host "User $Name is recovered" -ForegroundColor DarkGreen