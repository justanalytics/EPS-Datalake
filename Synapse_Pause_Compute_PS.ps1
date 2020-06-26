$Thumbprint = '254A14250585F4D9DF22BCD460AF606C41BDBC03'
$TenantId = 'bc5c7327-b12e-48db-a856-175591ecd2f0'
$ApplicationId = 'b55bc976-6677-4783-912a-04a6f44f35cd'
Connect-AzAccount -CertificateThumbprint $Thumbprint -ApplicationId $ApplicationId -Tenant $TenantId -ServicePrincipal
Set-AzContext -SubscriptionName "Visual Studio Enterprise Subscription – MPN"
#Get-AzSqlDatabaseActivity -ResourceGroupName "acresourcegroup" -ServerName "acsqlserver1" -DatabaseName "acsynapseanalyticsnew"

$database = Get-AzSqlDatabase –ResourceGroupName "acresourcegroup" –ServerName "acsqlserver1" –DatabaseName "acsynapseanalyticsnew"
if($database){

    if($database.Status -eq 'Paused'){
        Write-Output "The Data Warehouse was already paused."
    }else{
        $database | Suspend-AzSqlDatabase
        Write-Output "The Data Warehouse has been paused." 
    }

}else{

    Write-Output "The Data Warehouse does not exist."
}