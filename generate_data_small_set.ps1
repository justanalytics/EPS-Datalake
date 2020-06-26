$Start = Get-Date
$BaseDate = (Get-Date "2016/12/31 12:59:59")
$FullYear = 366*24*60*60

$File = "C:\Users\agnit.chatterjee\Documents\Projects\EPS\Scripts\file.csv"
"Date,Customer,Type,Value1,Value2,Value3,Value4" | Out-File -FilePath $File -Encoding utf8

1..1000 | % {

  Write-Progress -Activity Generating File -PercentComplete ($_/20) 
  $Lines = ""
  1..1000 | % {
    $Dt = $BaseDate.AddSeconds(-(Get-Random $FullYear))
    $Ct = (Get-Random 100)
    if ((Get-Random 5) -lt 4) {$Ty="Sale"} else { $Ty="Return"}
	$V1 = (Get-Random 100000) / 100
	$V2 = (Get-Random 100000) / 100
	$V3 = (Get-Random 100000) / 100
	$V4 = (Get-Random 100000) / 100
	$V5 = (Get-Random 100000) / 100
	$V6 = (Get-Random 100000) / 100
	$V7 = (Get-Random 100000) / 100
	$V8 = (Get-Random 100000) / 100
	$V9 = (Get-Random 100000) / 100
	$V10 = (Get-Random 100000) / 100
	$V11= "dummystr11"
	$V12= "dummystr12"
	$V13= "dummystr13"
	$V14= "dummystr14"
	$V15= "dummystr15"
	$V16= "dummystr16"
	$V17= "dummystr17"
	$V18= "dummystr18"
	$V19= "dummystr19"
	$V20= "dummystr20"
	$V21= "dummystr21"
	$V22= "dummystr22"
	$V23= "dummystr23"
	$V24= "dummystr24"
	$V25= "dummystr25"
	$V26= "dummystr26"
	$V27= "dummystr27"
	$V28= "dummystr28"
	$V29= "dummystr29"
	$V30= "dummystr30"
	$V31= "dummystr31"
	$V32= "dummystr32"
	$V33= "dummystr33"
	$V34= "dummystr34"
	$V35= "dummystr35"
	$V36= "dummystr36"
	$V37= "dummystr37"
	$V38= "dummystr38"
	$V39= "dummystr39"
	$V40= "dummystr40"
	$V41= "dummystr41"
	$V42= "dummystr42"
	$V43= "dummystr43"
	$V44= "dummystr44"
	$V45= "dummystr45"
	$V46= "dummystr46"
	$V47= "dummystr47"
	$V48= "dummystr48"
	$V49= "dummystr49"
	$V50= "dummystr50"
	$V51= "dummystr51"
	$V52= "dummystr52"
	$V53= "dummystr53"
	$V54= "dummystr54"
	$V55= "dummystr55"
	$V56= "dummystr56"
	$V57= "dummystr57"
	$V58= "dummystr58"
	$V59= "dummystr59"
	$V60= "dummystr60"
	$V61= "dummystr61"
	$V62= "dummystr62"
	$V63= "dummystr63"
	$V64= "dummystr64"
	$V65= "dummystr65"
	$V66= "dummystr66"
	$V67= "dummystr67"
	$V68= "dummystr68"
	$V69= "dummystr69"
	$V70= "dummystr70"
	$V71= "dummystr71"
	$V72= "dummystr72"
	$V73= "dummystr73"
	$V74= "dummystr74"
	$V75= "dummystr75"
	$V76= "dummystr76"
	$V77= "dummystr77"
	$V78= "dummystr78"
	$V79= "dummystr79"
	$V80= "dummystr80"
	$V81= "dummystr81"
	$V82= "dummystr82"
	$V83= "dummystr83"
	$V84= "dummystr84"
	$V85= "dummystr85"
	$V86= "dummystr86"
	$V87= "dummystr87"
	$V88= "dummystr88"
	$V89= "dummystr89"
	$V90= "dummystr90"
	$V91= "dummystr91"
	$V92= "dummystr92"
	$V93= "dummystr93"
	$V94= "dummystr94"
	$V95= "dummystr95"
	$V96= "dummystr96"
	$V97= "dummystr97"
	$V98= "dummystr98"
    $Lines += [string]$Dt + "," + [string]$Ct + "," + $Ty + "," + [string]$Vl +[string]$V1 + "," +[string]$V2 + "," +[string]$V3 + "," +[string]$V4 +[char]10 + [char]13
  }

  $Lines | Out-File -FilePath $File -Encoding utf8 -Append
}

$End = Get-Date
"Started at $Start and ended at $End"
$Diff = ($End-$Start).TotalSeconds
"Processing took $Diff seconds"

(gc $File) | ? {$_.trim() -ne "" } | set-content $File