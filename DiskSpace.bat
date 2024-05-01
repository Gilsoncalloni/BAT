
Param (
$computers = (Get-Content "C:\temp\serverlist.txt")
)


$head = @"
<style>
body { background-color:#FFFFFF;
font-family:Tahoma;
font-size:8pt; }
td, th { border:1px solid #000033;
border-collapse:collapse; }
th { color:white;
background-color:#000033; }
table, tr, td, th { padding: 0px; margin: 0px }
table { margin-left:8px; }
</style>
<Title>$Title</Title>
"@

$fragments=@()

$data=Get-WmiObject -Class Win32_logicaldisk -filter "drivetype=3" -computer $computers -ErrorAction SilentlyContinue

$groups=$Data |Group-Object -Property SystemName

[string]$g=[char]9608

ForEach ($computer in $groups) {

$fragments+="<b>$($computer.Name)</b>"

$Drives=$computer.group

$html=$drives |Select @{Name="Drive";Expression={$_.DeviceID}},
@{Name="Espaço Disponivel GB";Expression={$_.Size/1GB -as [int]}},
@{Name="Espaço Utilizado GB";Expression={"{0:N2}" -f (($_.Size - $_.Freespace)/1GB) }},
@{Name="Espaço Livre GB";Expression={"{0:N2}" -f ($_.FreeSpace/1GB) }},
@{Name="Gráfico";Expression={
$UsedPer= (($_.Size - $_.Freespace)/$_.Size)*100
$UsedGraph=$g * ($UsedPer/2)
$FreeGraph=$g* ((100-$UsedPer)/2)

"xopenFont color=blackxclose{0}xopen/FontxclosexopenFont Color=Whitexclose{1}xopen/fontxclose" -f $usedGraph,$FreeGraph
}} |ConvertTo-Html -Fragment

$html=$html -replace "xopen","<"
$html=$html -replace "xclose",">"

$Fragments+=$html

}


$footer=("<br><I>Ultima Geração em {0} by {1}\{2}<I>" -f (Get-Date -displayhint date),$env:userdomain,$env:username)
$fragments+=$footer

ConvertTo-Html -head $head -body $fragments |Out-File c:\temp\serverdiscos_$(Get-Date -Format yyyy_MM_dd).html