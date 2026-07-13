.".\vars.ps1"


$secure_secret = ConvertTo-SecureString $client_secret -AsPlainText -Force
$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $client_id, $secure_secret

Connect-AzAccount -ServicePrincipal -TenantId $tenant_id -Credential $Credential | Out-Null

New-AzStorageAccount -ResourceGroupName $resource_group -Name "rekrutacja" -Location $location -SkuName $skuname -kind $kind
