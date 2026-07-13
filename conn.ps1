$client_secret = "M.q8Q~gbo1trv86fJasYpjnQEhJmLQpPyZztNcwX"
$tenant_id = "ebcb8c39-7ec8-4b0f-afaa-ae754af0cd8f"
$client_id = "b54b874d-8a59-4786-909e-2fc6c2ccc80e"
$location = "westeurope"
$resource_group = "rg-rekrutacja-c1"
$skuname = "Standard_LRS"
$kind = "storageV2"



$secure_secret = ConvertTo-SecureString $client_secret -AsPlainText -Force
$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $client_id, $secure_secret



Connect-AzAccount -ServicePrincipal -TenantId $tenant_id -Credential $Credential | Out-Null



New-AzStorageAccount -ResourceGroupName $resource_group -Name "rekrutacja" -Location $location -SkuName $skuname -kind $kind