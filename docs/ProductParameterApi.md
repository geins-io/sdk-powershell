# PSOpenAPITools.PSOpenAPITools/Api.ProductParameterApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BatchReplaceProductParameterValues**](ProductParameterApi.md#Invoke-BatchReplaceProductParameterValues) | **POST** /API/ProductParameter/Values | Replace multiple product parameter values
[**Invoke-BatchUpdateProductParameterValues**](ProductParameterApi.md#Invoke-BatchUpdateProductParameterValues) | **PUT** /API/ProductParameter/Values | Update multiple product parameter values
[**New-OrUpdateProductParameterValue**](ProductParameterApi.md#New-OrUpdateProductParameterValue) | **POST** /API/ProductParameter/Value | Create or update a new product parameter value
[**New-ProductParameter**](ProductParameterApi.md#New-ProductParameter) | **POST** /API/ProductParameter | Create a new product parameter
[**New-ProductParameterGroup**](ProductParameterApi.md#New-ProductParameterGroup) | **POST** /API/ProductParameter/Group | Create a new product parameter group
[**New-ProductParameterPredefinedValue**](ProductParameterApi.md#New-ProductParameterPredefinedValue) | **POST** /API/ProductParameter/PredefinedValue | Create a new predefined value for a product parameter
[**Get-ProductParameterById**](ProductParameterApi.md#Get-ProductParameterById) | **GET** /API/ProductParameter/{id} | Get a specific product parameter
[**Get-ProductParameterGroupById**](ProductParameterApi.md#Get-ProductParameterGroupById) | **GET** /API/ProductParameter/Group/{id} | Get a specific product parameter group
[**Get-ProductParameterPredefinedValue**](ProductParameterApi.md#Get-ProductParameterPredefinedValue) | **GET** /API/ProductParameter/PredefinedValue/{id} | Get a specific predefined value for a product parameter
[**Get-ProductParameterValue**](ProductParameterApi.md#Get-ProductParameterValue) | **GET** /API/ProductParameter/Value/{id} | Get a specific product parameter value
[**Update-ProductParameter**](ProductParameterApi.md#Update-ProductParameter) | **PUT** /API/ProductParameter/{id} | Updates a product parameter
[**Update-ProductParameterGroup**](ProductParameterApi.md#Update-ProductParameterGroup) | **PUT** /API/ProductParameter/Group/{id} | Update a product parameter group


<a name="Invoke-BatchReplaceProductParameterValues"></a>
# **Invoke-BatchReplaceProductParameterValues**
> Envelope Invoke-BatchReplaceProductParameterValues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductParameterBatch] <PSCustomObject><br>

Replace multiple product parameter values

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
$ProductParameterModelsWriteProductParameterValue = Initialize-ProductParameterModelsWriteProductParameterValue -ProductId 0 -ParameterId 0 -Value "MyValue" -LocalizedDescriptions $SharedModelsLocalizableContent

$ProductParameterModelsWriteProductParameterValueBatch = Initialize-ProductParameterModelsWriteProductParameterValueBatch -ProductParameterValues $ProductParameterModelsWriteProductParameterValue # ProductParameterModelsWriteProductParameterValueBatch | The product parameter values to replace.

# Replace multiple product parameter values
try {
    $Result = Invoke-BatchReplaceProductParameterValues -ProductParameterBatch $ProductParameterBatch
} catch {
    Write-Host ("Exception occurred when calling Invoke-BatchReplaceProductParameterValues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductParameterBatch** | [**ProductParameterModelsWriteProductParameterValueBatch**](ProductParameterModelsWriteProductParameterValueBatch.md)| The product parameter values to replace. | 

### Return type

[**Envelope**](Envelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BatchUpdateProductParameterValues"></a>
# **Invoke-BatchUpdateProductParameterValues**
> Envelope Invoke-BatchUpdateProductParameterValues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductParameterBatch] <PSCustomObject><br>

Update multiple product parameter values

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
$ProductParameterModelsWriteProductParameterValue = Initialize-ProductParameterModelsWriteProductParameterValue -ProductId 0 -ParameterId 0 -Value "MyValue" -LocalizedDescriptions $SharedModelsLocalizableContent

$ProductParameterModelsWriteProductParameterValueBatch = Initialize-ProductParameterModelsWriteProductParameterValueBatch -ProductParameterValues $ProductParameterModelsWriteProductParameterValue # ProductParameterModelsWriteProductParameterValueBatch | The product parameter values update.

# Update multiple product parameter values
try {
    $Result = Invoke-BatchUpdateProductParameterValues -ProductParameterBatch $ProductParameterBatch
} catch {
    Write-Host ("Exception occurred when calling Invoke-BatchUpdateProductParameterValues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductParameterBatch** | [**ProductParameterModelsWriteProductParameterValueBatch**](ProductParameterModelsWriteProductParameterValueBatch.md)| The product parameter values update. | 

### Return type

[**Envelope**](Envelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-OrUpdateProductParameterValue"></a>
# **New-OrUpdateProductParameterValue**
> EnvelopeProductParameterModelsReadProductParameterValue New-OrUpdateProductParameterValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductParameterValue] <PSCustomObject><br>

Create or update a new product parameter value

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
$ProductParameterModelsWriteProductParameterValue = Initialize-ProductParameterModelsWriteProductParameterValue -ProductId 0 -ParameterId 0 -Value "MyValue" -LocalizedDescriptions $SharedModelsLocalizableContent # ProductParameterModelsWriteProductParameterValue | The product parameter value to create or update.

# Create or update a new product parameter value
try {
    $Result = New-OrUpdateProductParameterValue -ProductParameterValue $ProductParameterValue
} catch {
    Write-Host ("Exception occurred when calling New-OrUpdateProductParameterValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductParameterValue** | [**ProductParameterModelsWriteProductParameterValue**](ProductParameterModelsWriteProductParameterValue.md)| The product parameter value to create or update. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterValue**](EnvelopeProductParameterModelsReadProductParameterValue.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-ProductParameter"></a>
# **New-ProductParameter**
> EnvelopeProductParameterModelsReadProductParameter New-ProductParameter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductParameter] <PSCustomObject><br>

Create a new product parameter

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
$ProductParameterModelsWriteProductParameter = Initialize-ProductParameterModelsWriteProductParameter -ParameterId 0 -GroupId 0 -ParameterType "1" -Name "MyName" -LocalizedNames $SharedModelsLocalizableContent # ProductParameterModelsWriteProductParameter | The product parameter to create.

# Create a new product parameter
try {
    $Result = New-ProductParameter -ProductParameter $ProductParameter
} catch {
    Write-Host ("Exception occurred when calling New-ProductParameter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductParameter** | [**ProductParameterModelsWriteProductParameter**](ProductParameterModelsWriteProductParameter.md)| The product parameter to create. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameter**](EnvelopeProductParameterModelsReadProductParameter.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-ProductParameterGroup"></a>
# **New-ProductParameterGroup**
> EnvelopeProductParameterModelsReadProductParameterGroup New-ProductParameterGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductParameterGroup] <PSCustomObject><br>

Create a new product parameter group

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
$ProductParameterModelsWriteProductParameterGroup = Initialize-ProductParameterModelsWriteProductParameterGroup -Name "MyName" -LocalizedNames $SharedModelsLocalizableContent -ParameterIds 0 # ProductParameterModelsWriteProductParameterGroup | The product parameter group to create.

# Create a new product parameter group
try {
    $Result = New-ProductParameterGroup -ProductParameterGroup $ProductParameterGroup
} catch {
    Write-Host ("Exception occurred when calling New-ProductParameterGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductParameterGroup** | [**ProductParameterModelsWriteProductParameterGroup**](ProductParameterModelsWriteProductParameterGroup.md)| The product parameter group to create. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterGroup**](EnvelopeProductParameterModelsReadProductParameterGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-ProductParameterPredefinedValue"></a>
# **New-ProductParameterPredefinedValue**
> EnvelopeProductParameterModelsReadProductParameterPredefinedValue New-ProductParameterPredefinedValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductParameterPredefinedValue] <PSCustomObject><br>

Create a new predefined value for a product parameter

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
$ProductParameterModelsWriteProductParameterPredefinedValue = Initialize-ProductParameterModelsWriteProductParameterPredefinedValue -ParameterId 0 -PredefinedValueId 0 -Name "MyName" -LocalizedNames $SharedModelsLocalizableContent # ProductParameterModelsWriteProductParameterPredefinedValue | The predefined value to create.

# Create a new predefined value for a product parameter
try {
    $Result = New-ProductParameterPredefinedValue -ProductParameterPredefinedValue $ProductParameterPredefinedValue
} catch {
    Write-Host ("Exception occurred when calling New-ProductParameterPredefinedValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductParameterPredefinedValue** | [**ProductParameterModelsWriteProductParameterPredefinedValue**](ProductParameterModelsWriteProductParameterPredefinedValue.md)| The predefined value to create. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterPredefinedValue**](EnvelopeProductParameterModelsReadProductParameterPredefinedValue.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProductParameterById"></a>
# **Get-ProductParameterById**
> EnvelopeProductParameterModelsReadProductParameter Get-ProductParameterById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a specific product parameter

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

$Id = 56 # Int32 | The id of the product parameter to get.

# Get a specific product parameter
try {
    $Result = Get-ProductParameterById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ProductParameterById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the product parameter to get. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameter**](EnvelopeProductParameterModelsReadProductParameter.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProductParameterGroupById"></a>
# **Get-ProductParameterGroupById**
> EnvelopeProductParameterModelsReadProductParameterGroup Get-ProductParameterGroupById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a specific product parameter group

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

$Id = 56 # Int32 | The id of the product parameter group to get.

# Get a specific product parameter group
try {
    $Result = Get-ProductParameterGroupById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ProductParameterGroupById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the product parameter group to get. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterGroup**](EnvelopeProductParameterModelsReadProductParameterGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProductParameterPredefinedValue"></a>
# **Get-ProductParameterPredefinedValue**
> EnvelopeProductParameterModelsReadProductParameterValue Get-ProductParameterPredefinedValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>

Get a specific predefined value for a product parameter

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

$Id = 56 # Int32 | The id of the predefined value to get.

# Get a specific predefined value for a product parameter
try {
    $Result = Get-ProductParameterPredefinedValue -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ProductParameterPredefinedValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the predefined value to get. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterValue**](EnvelopeProductParameterModelsReadProductParameterValue.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProductParameterValue"></a>
# **Get-ProductParameterValue**
> EnvelopeProductParameterModelsReadProductParameterValue Get-ProductParameterValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PredefinedValueId] <String><br>

Get a specific product parameter value

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

$Id = 56 # Int32 | The id of the product parameter value to get.
$PredefinedValueId = "MyPredefinedValueId" # String | The predefined value id of the product parameter value to get. Only applicable for {ProductParameter.Models.ProductParameterType.Multi}. (optional)

# Get a specific product parameter value
try {
    $Result = Get-ProductParameterValue -Id $Id -PredefinedValueId $PredefinedValueId
} catch {
    Write-Host ("Exception occurred when calling Get-ProductParameterValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the product parameter value to get. | 
 **PredefinedValueId** | **String**| The predefined value id of the product parameter value to get. Only applicable for {ProductParameter.Models.ProductParameterType.Multi}. | [optional] 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterValue**](EnvelopeProductParameterModelsReadProductParameterValue.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-ProductParameter"></a>
# **Update-ProductParameter**
> EnvelopeProductParameterModelsReadProductParameter Update-ProductParameter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductParameter] <PSCustomObject><br>

Updates a product parameter

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

$Id = 56 # Int32 | The id of the product parameter to update.
$SharedModelsLocalizableContent = Initialize-SharedModelsLocalizableContent -LanguageCode "MyLanguageCode" -Content "MyContent"
$ProductParameterModelsWriteProductParameter = Initialize-ProductParameterModelsWriteProductParameter -ParameterId 0 -GroupId 0 -ParameterType "1" -Name "MyName" -LocalizedNames $SharedModelsLocalizableContent # ProductParameterModelsWriteProductParameter | The product parameter data to update.

# Updates a product parameter
try {
    $Result = Update-ProductParameter -Id $Id -ProductParameter $ProductParameter
} catch {
    Write-Host ("Exception occurred when calling Update-ProductParameter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the product parameter to update. | 
 **ProductParameter** | [**ProductParameterModelsWriteProductParameter**](ProductParameterModelsWriteProductParameter.md)| The product parameter data to update. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameter**](EnvelopeProductParameterModelsReadProductParameter.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-ProductParameterGroup"></a>
# **Update-ProductParameterGroup**
> EnvelopeProductParameterModelsReadProductParameterGroup Update-ProductParameterGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductParameterGroup] <PSCustomObject><br>

Update a product parameter group

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

$Id = 56 # Int32 | The id of the product parameter group to update.
$SharedModelsLocalizableContent = Initialize-SharedModelsLocalizableContent -LanguageCode "MyLanguageCode" -Content "MyContent"
$ProductParameterModelsWriteProductParameterGroup = Initialize-ProductParameterModelsWriteProductParameterGroup -Name "MyName" -LocalizedNames $SharedModelsLocalizableContent -ParameterIds 0 # ProductParameterModelsWriteProductParameterGroup | The product parameter group data to update.

# Update a product parameter group
try {
    $Result = Update-ProductParameterGroup -Id $Id -ProductParameterGroup $ProductParameterGroup
} catch {
    Write-Host ("Exception occurred when calling Update-ProductParameterGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The id of the product parameter group to update. | 
 **ProductParameterGroup** | [**ProductParameterModelsWriteProductParameterGroup**](ProductParameterModelsWriteProductParameterGroup.md)| The product parameter group data to update. | 

### Return type

[**EnvelopeProductParameterModelsReadProductParameterGroup**](EnvelopeProductParameterModelsReadProductParameterGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

