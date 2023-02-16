# PSOpenAPITools.PSOpenAPITools/Api.CategoryApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Category**](CategoryApi.md#New-Category) | **POST** /API/Category | Create a new category
[**Get-CategoryById**](CategoryApi.md#Get-CategoryById) | **GET** /API/Category/{id} | Get a specific category
[**Invoke-QueryCategories**](CategoryApi.md#Invoke-QueryCategories) | **POST** /API/Category/Query | Query categories
[**Update-Category**](CategoryApi.md#Update-Category) | **PUT** /API/Category/{id} | Update a category


<a name="New-Category"></a>
# **New-Category**
> EnvelopeCategoryModelsReadCategory New-Category<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Category] <PSCustomObject><br>

Create a new category

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
$CategoryModelsWriteCategory = Initialize-CategoryModelsWriteCategory -ParentCategoryId 0 -Names $SharedModelsLocalizableContent -Descriptions $SharedModelsLocalizableContent # CategoryModelsWriteCategory | The category to create.

# Create a new category
try {
    $Result = New-Category -Category $Category
} catch {
    Write-Host ("Exception occurred when calling New-Category: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Category** | [**CategoryModelsWriteCategory**](CategoryModelsWriteCategory.md)| The category to create. | 

### Return type

[**EnvelopeCategoryModelsReadCategory**](EnvelopeCategoryModelsReadCategory.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CategoryById"></a>
# **Get-CategoryById**
> EnvelopeCategoryModelsReadCategory Get-CategoryById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a specific category

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

$Id = 56 # Int32 | The id of the category to get.

# Get a specific category
try {
    $Result = Get-CategoryById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CategoryById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the category to get. | 

### Return type

[**EnvelopeCategoryModelsReadCategory**](EnvelopeCategoryModelsReadCategory.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QueryCategories"></a>
# **Invoke-QueryCategories**
> CategoryModelsReadCategory[] Invoke-QueryCategories<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <PSCustomObject><br>

Query categories

No response envelope.

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

$CategoryModelsCategoryQuery = Initialize-CategoryModelsCategoryQuery -CreatedAfter (Get-Date) -CategoryIds 0 # CategoryModelsCategoryQuery | The query to filter categories by.

# Query categories
try {
    $Result = Invoke-QueryCategories -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryCategories: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | [**CategoryModelsCategoryQuery**](CategoryModelsCategoryQuery.md)| The query to filter categories by. | 

### Return type

[**CategoryModelsReadCategory[]**](CategoryModelsReadCategory.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Category"></a>
# **Update-Category**
> EnvelopeCategoryModelsReadCategory Update-Category<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Category] <PSCustomObject><br>

Update a category

Leaving out a property will ensure no changes are made to that property. Collection properties will delete and/or add as necessary to match the supplied data.

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

$Id = 56 # Int32 | The id of the category to update.
$SharedModelsLocalizableContent = Initialize-SharedModelsLocalizableContent -LanguageCode "MyLanguageCode" -Content "MyContent"
$CategoryModelsWriteCategory = Initialize-CategoryModelsWriteCategory -ParentCategoryId 0 -Names $SharedModelsLocalizableContent -Descriptions $SharedModelsLocalizableContent # CategoryModelsWriteCategory | The category data to update.

# Update a category
try {
    $Result = Update-Category -Id $Id -Category $Category
} catch {
    Write-Host ("Exception occurred when calling Update-Category: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the category to update. | 
 **Category** | [**CategoryModelsWriteCategory**](CategoryModelsWriteCategory.md)| The category data to update. | 

### Return type

[**EnvelopeCategoryModelsReadCategory**](EnvelopeCategoryModelsReadCategory.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

