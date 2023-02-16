# PSOpenAPITools.PSOpenAPITools/Api.BrandApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Brand**](BrandApi.md#New-Brand) | **POST** /API/Brand | Create a new brand
[**Get-BrandById**](BrandApi.md#Get-BrandById) | **GET** /API/Brand/{id} | Get a specific brand
[**Invoke-QueryBrands**](BrandApi.md#Invoke-QueryBrands) | **POST** /API/Brand/Query | Query brands
[**Update-Brand**](BrandApi.md#Update-Brand) | **PUT** /API/Brand/{id} | Updates a brand


<a name="New-Brand"></a>
# **New-Brand**
> EnvelopeBrandModelsReadBrand New-Brand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Brand] <PSCustomObject><br>

Create a new brand

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

$SharedModelsLocalizableContent = Initialize-SharedModelsLocalizableContent -LanguageCode "MyLanguageCode" -Content "MyContent"
$BrandModelsWriteBrand = Initialize-BrandModelsWriteBrand -Name "MyName" -ExternalId "MyExternalId" -Descriptions $SharedModelsLocalizableContent # BrandModelsWriteBrand | The brand to create.

# Create a new brand
try {
    $Result = New-Brand -Brand $Brand
} catch {
    Write-Host ("Exception occurred when calling New-Brand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Brand** | [**BrandModelsWriteBrand**](BrandModelsWriteBrand.md)| The brand to create. | 

### Return type

[**EnvelopeBrandModelsReadBrand**](EnvelopeBrandModelsReadBrand.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BrandById"></a>
# **Get-BrandById**
> EnvelopeBrandModelsReadBrand Get-BrandById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a specific brand

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

$Id = 56 # Int32 | The id of the brand to get.

# Get a specific brand
try {
    $Result = Get-BrandById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BrandById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the brand to get. | 

### Return type

[**EnvelopeBrandModelsReadBrand**](EnvelopeBrandModelsReadBrand.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QueryBrands"></a>
# **Invoke-QueryBrands**
> BrandModelsReadBrand[] Invoke-QueryBrands<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <PSCustomObject><br>

Query brands

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

$BrandModelsBrandQuery = Initialize-BrandModelsBrandQuery -CreatedAfter (Get-Date) -BrandIds 0 -ExternalIds "MyExternalIds" # BrandModelsBrandQuery | The details of the query.

# Query brands
try {
    $Result = Invoke-QueryBrands -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryBrands: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | [**BrandModelsBrandQuery**](BrandModelsBrandQuery.md)| The details of the query. | 

### Return type

[**BrandModelsReadBrand[]**](BrandModelsReadBrand.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Brand"></a>
# **Update-Brand**
> EnvelopeBrandModelsReadBrand Update-Brand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Brand] <PSCustomObject><br>

Updates a brand

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

$Id = 56 # Int32 | The id of the brand to update.
$SharedModelsLocalizableContent = Initialize-SharedModelsLocalizableContent -LanguageCode "MyLanguageCode" -Content "MyContent"
$BrandModelsWriteBrand = Initialize-BrandModelsWriteBrand -Name "MyName" -ExternalId "MyExternalId" -Descriptions $SharedModelsLocalizableContent # BrandModelsWriteBrand | The brand data to update.

# Updates a brand
try {
    $Result = Update-Brand -Id $Id -Brand $Brand
} catch {
    Write-Host ("Exception occurred when calling Update-Brand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the brand to update. | 
 **Brand** | [**BrandModelsWriteBrand**](BrandModelsWriteBrand.md)| The brand data to update. | 

### Return type

[**EnvelopeBrandModelsReadBrand**](EnvelopeBrandModelsReadBrand.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

