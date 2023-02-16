# PSOpenAPITools.PSOpenAPITools/Api.SupplierApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Supplier**](SupplierApi.md#New-Supplier) | **POST** /API/Supplier | Create a new supplier
[**Get-SupplierById**](SupplierApi.md#Get-SupplierById) | **GET** /API/Supplier/{id} | Get a specific supplier
[**Invoke-QuerySuppliers**](SupplierApi.md#Invoke-QuerySuppliers) | **POST** /API/Supplier/Query | Query suppliers
[**Update-Supplier**](SupplierApi.md#Update-Supplier) | **PUT** /API/Supplier/{id} | Updates a supplier


<a name="New-Supplier"></a>
# **New-Supplier**
> EnvelopeSupplierModelsReadSupplier New-Supplier<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Supplier] <PSCustomObject><br>

Create a new supplier

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKey
$Configuration.ApiKey.x-apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-apikey = "Bearer"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SupplierModelsWriteSupplier = Initialize-SupplierModelsWriteSupplier -Name "MyName" -Address1 "MyAddress1" -Address2 "MyAddress2" -Address3 "MyAddress3" -ZipCode "MyZipCode" -Country "MyCountry" -ContactPerson "MyContactPerson" -Phone1 "MyPhone1" -Phone2 "MyPhone2" -Email "MyEmail" -ExternalId "MyExternalId" # SupplierModelsWriteSupplier | The supplier to create.

# Create a new supplier
try {
    $Result = New-Supplier -Supplier $Supplier
} catch {
    Write-Host ("Exception occurred when calling New-Supplier: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Supplier** | [**SupplierModelsWriteSupplier**](SupplierModelsWriteSupplier.md)| The supplier to create. | 

### Return type

[**EnvelopeSupplierModelsReadSupplier**](EnvelopeSupplierModelsReadSupplier.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SupplierById"></a>
# **Get-SupplierById**
> EnvelopeSupplierModelsReadSupplier Get-SupplierById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a specific supplier

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKey
$Configuration.ApiKey.x-apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-apikey = "Bearer"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 56 # Int32 | The id of the supplier to get.

# Get a specific supplier
try {
    $Result = Get-SupplierById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-SupplierById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the supplier to get. | 

### Return type

[**EnvelopeSupplierModelsReadSupplier**](EnvelopeSupplierModelsReadSupplier.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QuerySuppliers"></a>
# **Invoke-QuerySuppliers**
> SupplierModelsReadSupplier[] Invoke-QuerySuppliers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <PSCustomObject><br>

Query suppliers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKey
$Configuration.ApiKey.x-apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-apikey = "Bearer"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SupplierModelsSupplierQuery = Initialize-SupplierModelsSupplierQuery -NameContains "MyNameContains" -ExternalIds "MyExternalIds" # SupplierModelsSupplierQuery | The details of the query

# Query suppliers
try {
    $Result = Invoke-QuerySuppliers -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Invoke-QuerySuppliers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | [**SupplierModelsSupplierQuery**](SupplierModelsSupplierQuery.md)| The details of the query | 

### Return type

[**SupplierModelsReadSupplier[]**](SupplierModelsReadSupplier.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Supplier"></a>
# **Update-Supplier**
> EnvelopeSupplierModelsReadSupplier Update-Supplier<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Supplier] <PSCustomObject><br>

Updates a supplier

Leaving out a property will ensure no changes are made to that property.  Collection properties will delete and/or add as necessary to match the supplied data.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKey
$Configuration.ApiKey.x-apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-apikey = "Bearer"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 56 # Int32 | The id of the supplier to update.
$SupplierModelsWriteSupplier = Initialize-SupplierModelsWriteSupplier -Name "MyName" -Address1 "MyAddress1" -Address2 "MyAddress2" -Address3 "MyAddress3" -ZipCode "MyZipCode" -Country "MyCountry" -ContactPerson "MyContactPerson" -Phone1 "MyPhone1" -Phone2 "MyPhone2" -Email "MyEmail" -ExternalId "MyExternalId" # SupplierModelsWriteSupplier | The supplier data to update.

# Updates a supplier
try {
    $Result = Update-Supplier -Id $Id -Supplier $Supplier
} catch {
    Write-Host ("Exception occurred when calling Update-Supplier: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the supplier to update. | 
 **Supplier** | [**SupplierModelsWriteSupplier**](SupplierModelsWriteSupplier.md)| The supplier data to update. | 

### Return type

[**EnvelopeSupplierModelsReadSupplier**](EnvelopeSupplierModelsReadSupplier.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

