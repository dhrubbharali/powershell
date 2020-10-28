$a=(Get-aduser -filter * -properties *).Name
foreach($b in $a){
$c=(Get-aduser -identity $b -properties *).Whencreated
$d=((Get-aduser -identity $b -properties *).memberof|Get-Adgroup).Name -join ','

write-host "$b | $c | $d "

}