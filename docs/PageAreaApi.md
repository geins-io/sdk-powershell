# PSOpenAPITools.PSOpenAPITools/Api.PageAreaApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OrUpdateAPageArea**](PageAreaApi.md#New-OrUpdateAPageArea) | **POST** /API/PageArea | Create or update a page area
[**New-OrUpdatePageAreaFamily**](PageAreaApi.md#New-OrUpdatePageAreaFamily) | **POST** /API/PageAreaFamily | Create or update a page area family
[**Get-PageArea**](PageAreaApi.md#Get-PageArea) | **GET** /API/PageArea/{name} | Get a specific page area
[**Get-PageAreaFamily**](PageAreaApi.md#Get-PageAreaFamily) | **GET** /API/PageAreaFamily/{familyId} | Get a specific page area family
[**Invoke-ListPageAreaFamilies**](PageAreaApi.md#Invoke-ListPageAreaFamilies) | **GET** /API/PageAreaFamily/List | Gets a list of all page area families, including nested data


<a name="New-OrUpdateAPageArea"></a>
# **New-OrUpdateAPageArea**
> EnvelopePageAreaModelsReadPageArea New-OrUpdateAPageArea<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Area] <PSCustomObject><br>

Create or update a page area

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

$PageWidgetLazyLoadSetupLazyLoadConfiguration = Initialize-PageWidgetLazyLoadSetupLazyLoadConfiguration -EnableLazyloadMobile $false -EagerLoadStepsMobile 0 -EnableLazyloadDesktop $false -EagerLoadStepsDesktop 0
$PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration = Initialize-PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration -CollectionName "MyCollectionName" -EnableLazyloadMobile $false -EagerLoadStepsMobile 0 -EnableLazyloadDesktop $false -EagerLoadStepsDesktop 0
$WidgetRestrictionSetupWidgetRestrictionConfiguration = Initialize-WidgetRestrictionSetupWidgetRestrictionConfiguration -ForcedResponsiveMode "0" -AllowedSizes "1"
$ContainerRestrictionSetupContainerRestrictionConfiguration = Initialize-ContainerRestrictionSetupContainerRestrictionConfiguration -AllowedLayouts "0" -BannedWidgets "00000000-0000-0000-0000-000000000000"
$SystemNullableValidationConfiguration = Initialize-SystemNullableValidationConfiguration -LazyLoadConfiguration $PageWidgetLazyLoadSetupLazyLoadConfiguration -LazyLoadCollectionConfigurations $PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration -WidgetRestrictions @{ key_example = $WidgetRestrictionSetupWidgetRestrictionConfiguration } -ContainerRestrictions $ContainerRestrictionSetupContainerRestrictionConfiguration

$PageAreaModelsWritePageArea = Initialize-PageAreaModelsWritePageArea -Index 0 -Name "MyName" -FamilyId 0 -Settings $SystemNullableValidationConfiguration # PageAreaModelsWritePageArea | The area model to create or update.

# Create or update a page area
try {
    $Result = New-OrUpdateAPageArea -Area $Area
} catch {
    Write-Host ("Exception occurred when calling New-OrUpdateAPageArea: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Area** | [**PageAreaModelsWritePageArea**](PageAreaModelsWritePageArea.md)| The area model to create or update. | 

### Return type

[**EnvelopePageAreaModelsReadPageArea**](EnvelopePageAreaModelsReadPageArea.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-OrUpdatePageAreaFamily"></a>
# **New-OrUpdatePageAreaFamily**
> EnvelopePageAreaModelsReadPageAreaFamily New-OrUpdatePageAreaFamily<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Family] <PSCustomObject><br>

Create or update a page area family

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

$PageWidgetLazyLoadSetupLazyLoadConfiguration = Initialize-PageWidgetLazyLoadSetupLazyLoadConfiguration -EnableLazyloadMobile $false -EagerLoadStepsMobile 0 -EnableLazyloadDesktop $false -EagerLoadStepsDesktop 0
$PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration = Initialize-PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration -CollectionName "MyCollectionName" -EnableLazyloadMobile $false -EagerLoadStepsMobile 0 -EnableLazyloadDesktop $false -EagerLoadStepsDesktop 0
$WidgetRestrictionSetupWidgetRestrictionConfiguration = Initialize-WidgetRestrictionSetupWidgetRestrictionConfiguration -ForcedResponsiveMode "0" -AllowedSizes "1"
$ContainerRestrictionSetupContainerRestrictionConfiguration = Initialize-ContainerRestrictionSetupContainerRestrictionConfiguration -AllowedLayouts "0" -BannedWidgets "00000000-0000-0000-0000-000000000000"
$SystemNullableValidationConfiguration = Initialize-SystemNullableValidationConfiguration -LazyLoadConfiguration $PageWidgetLazyLoadSetupLazyLoadConfiguration -LazyLoadCollectionConfigurations $PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration -WidgetRestrictions @{ key_example = $WidgetRestrictionSetupWidgetRestrictionConfiguration } -ContainerRestrictions $ContainerRestrictionSetupContainerRestrictionConfiguration

$PageAreaModelsWritePageArea = Initialize-PageAreaModelsWritePageArea -Index 0 -Name "MyName" -FamilyId 0 -Settings $SystemNullableValidationConfiguration

$PageAreaModelsWritePageAreaFamily = Initialize-PageAreaModelsWritePageAreaFamily -Id 0 -Name "MyName" -FilterableProperties "MyFilterableProperties" -Areas $PageAreaModelsWritePageArea # PageAreaModelsWritePageAreaFamily | The family model to create or update.

# Create or update a page area family
try {
    $Result = New-OrUpdatePageAreaFamily -Family $Family
} catch {
    Write-Host ("Exception occurred when calling New-OrUpdatePageAreaFamily: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Family** | [**PageAreaModelsWritePageAreaFamily**](PageAreaModelsWritePageAreaFamily.md)| The family model to create or update. | 

### Return type

[**EnvelopePageAreaModelsReadPageAreaFamily**](EnvelopePageAreaModelsReadPageAreaFamily.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PageArea"></a>
# **Get-PageArea**
> PageAreaModelsReadPageArea Get-PageArea<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get a specific page area

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

$Name = "MyName" # String | The name of the page area to get.

# Get a specific page area
try {
    $Result = Get-PageArea -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-PageArea: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The name of the page area to get. | 

### Return type

[**PageAreaModelsReadPageArea**](PageAreaModelsReadPageArea.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PageAreaFamily"></a>
# **Get-PageAreaFamily**
> PageAreaModelsReadPageAreaFamily Get-PageAreaFamily<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FamilyId] <Int32><br>

Get a specific page area family

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

$FamilyId = 56 # Int32 | The id of the page area family to get.

# Get a specific page area family
try {
    $Result = Get-PageAreaFamily -FamilyId $FamilyId
} catch {
    Write-Host ("Exception occurred when calling Get-PageAreaFamily: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FamilyId** | **Int32**| The id of the page area family to get. | 

### Return type

[**PageAreaModelsReadPageAreaFamily**](PageAreaModelsReadPageAreaFamily.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListPageAreaFamilies"></a>
# **Invoke-ListPageAreaFamilies**
> PageAreaModelsReadPageAreaFamily[] Invoke-ListPageAreaFamilies<br>

Gets a list of all page area families, including nested data

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


# Gets a list of all page area families, including nested data
try {
    $Result = Invoke-ListPageAreaFamilies
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListPageAreaFamilies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageAreaModelsReadPageAreaFamily[]**](PageAreaModelsReadPageAreaFamily.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

