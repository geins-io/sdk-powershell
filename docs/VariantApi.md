# PSOpenAPITools.PSOpenAPITools/Api.VariantApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-ProductToVariantGroup**](VariantApi.md#Add-ProductToVariantGroup) | **PUT** /API/VariantGroup/{groupId}/{productId} | Adds a product to an existing group
[**Add-ProductToVariantGroupByProductId**](VariantApi.md#Add-ProductToVariantGroupByProductId) | **PUT** /API/Variant/{productId1}/{productId2} | Adds a product to an existing group
[**New-VariantGroup**](VariantApi.md#New-VariantGroup) | **POST** /API/VariantGroup | Create a new variant group
[**New-VariantGroupWithProduct**](VariantApi.md#New-VariantGroupWithProduct) | **POST** /API/Variant/{productId}/VariantGroup | Create a new group for the provided product id
[**Invoke-DeleteVariantGroup**](VariantApi.md#Invoke-DeleteVariantGroup) | **DELETE** /API/VariantGroup/{groupId} | Delete an entire variant group
[**Invoke-DeleteVariantGroupByProductId**](VariantApi.md#Invoke-DeleteVariantGroupByProductId) | **DELETE** /API/Variant/{productId}/VariantGroup | Delete an entire variant group
[**Get-VariantGroup**](VariantApi.md#Get-VariantGroup) | **GET** /API/VariantGroup/{groupId} | Get a specific variant group
[**Get-VariantGroupByProductId**](VariantApi.md#Get-VariantGroupByProductId) | **GET** /API/Variant/{productId}/VariantGroup | Get the variant group for the provided id
[**Get-VariantLabels**](VariantApi.md#Get-VariantLabels) | **GET** /API/Variant/Labels | Get all valid variant labels
[**Remove-ProductFromVariantGroup**](VariantApi.md#Remove-ProductFromVariantGroup) | **DELETE** /API/Variant/{productId} | Remove a product from its variant group
[**Update-Variant**](VariantApi.md#Update-Variant) | **PUT** /API/Variant/{productId} | Adds the variant details for the product with the provided ID
[**Update-VariantGroup**](VariantApi.md#Update-VariantGroup) | **PUT** /API/VariantGroup/{groupId} | Updates the settings of a group


<a name="Add-ProductToVariantGroup"></a>
# **Add-ProductToVariantGroup**
> EnvelopeVariantModelsReadVariantGroup Add-ProductToVariantGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Variant] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Adds a product to an existing group

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

$GroupId = 56 # Int32 | The ID of the group to which a product should be added
$ProductId = "MyProductId" # String | The ID of the product to be added to the target group.
$VariantModelsWriteVariant = Initialize-VariantModelsWriteVariant -Label "MyLabel" -Value "MyValue" # VariantModelsWriteVariant[] | The variant details.
$ProductIdType = "0" # Int32 | The type of product id provided. (optional)
$Include = "MyInclude" # String | Comma separated list of product child collections to also include with the variant group. Set to ""product"" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Adds a product to an existing group
try {
    $Result = Add-ProductToVariantGroup -GroupId $GroupId -ProductId $ProductId -Variant $Variant -ProductIdType $ProductIdType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Add-ProductToVariantGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **Int32**| The ID of the group to which a product should be added | 
 **ProductId** | **String**| The ID of the product to be added to the target group. | 
 **Variant** | [**VariantModelsWriteVariant[]**](VariantModelsWriteVariant.md)| The variant details. | 
 **ProductIdType** | **Int32**| The type of product id provided. | [optional] 
 **Include** | **String**| Comma separated list of product child collections to also include with the variant group. Set to &quot;&quot;product&quot;&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-ProductToVariantGroupByProductId"></a>
# **Add-ProductToVariantGroupByProductId**
> EnvelopeVariantModelsReadVariantGroup Add-ProductToVariantGroupByProductId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId1] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId2] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Adds a product to an existing group

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

$ProductId1 = "MyProductId1" # String | The ID of a product belonging to the target group.
$ProductId2 = "MyProductId2" # String | The ID of the product to be added to the target group.
$ProductIdType = "0" # Int32 | The type of product id provided. (optional)
$Include = "MyInclude" # String | Comma separated list of product child collections to also include with the variant group. Set to ""product"" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Adds a product to an existing group
try {
    $Result = Add-ProductToVariantGroupByProductId -ProductId1 $ProductId1 -ProductId2 $ProductId2 -ProductIdType $ProductIdType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Add-ProductToVariantGroupByProductId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId1** | **String**| The ID of a product belonging to the target group. | 
 **ProductId2** | **String**| The ID of the product to be added to the target group. | 
 **ProductIdType** | **Int32**| The type of product id provided. | [optional] 
 **Include** | **String**| Comma separated list of product child collections to also include with the variant group. Set to &quot;&quot;product&quot;&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-VariantGroup"></a>
# **New-VariantGroup**
> EnvelopeVariantModelsReadVariantGroup New-VariantGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VariantGroup] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Create a new variant group

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
$ProductModelsWriteProductItem = Initialize-ProductModelsWriteProductItem -ItemId 0 -ArticleNumber "MyArticleNumber" -Name "MyName" -Shelf "MyShelf" -Weight 0 -Length 0 -Width 0 -Height 0 -Gtin "MyGtin" -Active $false -ExternalId "MyExternalId"

$ProductParameterModelsWriteProductParameterValue = Initialize-ProductParameterModelsWriteProductParameterValue -ProductId 0 -ParameterId 0 -Value "MyValue" -LocalizedDescriptions $SharedModelsLocalizableContent

$VariantModelsWriteVariant = Initialize-VariantModelsWriteVariant -Label "MyLabel" -Value "MyValue"
$MarketModelsMarket = Initialize-MarketModelsMarket -Id 0 -Name "MyName" -DisplayName "MyDisplayName" -Currency "MyCurrency" -VatRate 0 -MarketPrefix "MyMarketPrefix" -CountryId 0 -CurrencyId 0 -CurrencyRate 0 -LanguageId 0 -Language "MyLanguage"
$ProductModelsWriteProduct = Initialize-ProductModelsWriteProduct -ArticleNumber "MyArticleNumber" -Names $SharedModelsLocalizableContent -Active $false -PurchasePrice 0 -PurchasePriceCurrency "MyPurchasePriceCurrency" -ShortTexts $SharedModelsLocalizableContent -LongTexts $SharedModelsLocalizableContent -TechTexts $SharedModelsLocalizableContent -BrandId 0 -SupplierId 0 -Items $ProductModelsWriteProductItem -CategoryIds 0 -ParameterValues $ProductParameterModelsWriteProductParameterValue -Variants $VariantModelsWriteVariant -Markets $MarketModelsMarket -FreightClassId 0 -IntrastatCode "MyIntrastatCode" -CountryOfOrigin "MyCountryOfOrigin" -VariantGroupId 0 -Vat 0 -VatType "MyVatType" -ExternalId "MyExternalId" -ActivationDate (Get-Date)

$VariantModelsWriteVariantGroup = Initialize-VariantModelsWriteVariantGroup -Name "MyName" -CollapseInLists $false -VariantLabels "MyVariantLabels" -Products $ProductModelsWriteProduct # VariantModelsWriteVariantGroup | The settings for the new group.
$Include = "MyInclude" # String | Comma separated list of product child collections to also include with the variant group. Set to ""product"" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Create a new variant group
try {
    $Result = New-VariantGroup -VariantGroup $VariantGroup -Include $Include
} catch {
    Write-Host ("Exception occurred when calling New-VariantGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VariantGroup** | [**VariantModelsWriteVariantGroup**](VariantModelsWriteVariantGroup.md)| The settings for the new group. | 
 **Include** | **String**| Comma separated list of product child collections to also include with the variant group. Set to &quot;&quot;product&quot;&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-VariantGroupWithProduct"></a>
# **New-VariantGroupWithProduct**
> EnvelopeVariantModelsReadVariantGroup New-VariantGroupWithProduct<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VariantGroup] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Create a new group for the provided product id

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

$ProductId = "MyProductId" # String | The id of the product, for which to create a group.
$SharedModelsLocalizableContent = Initialize-SharedModelsLocalizableContent -LanguageCode "MyLanguageCode" -Content "MyContent"
$ProductModelsWriteProductItem = Initialize-ProductModelsWriteProductItem -ItemId 0 -ArticleNumber "MyArticleNumber" -Name "MyName" -Shelf "MyShelf" -Weight 0 -Length 0 -Width 0 -Height 0 -Gtin "MyGtin" -Active $false -ExternalId "MyExternalId"

$ProductParameterModelsWriteProductParameterValue = Initialize-ProductParameterModelsWriteProductParameterValue -ProductId 0 -ParameterId 0 -Value "MyValue" -LocalizedDescriptions $SharedModelsLocalizableContent

$VariantModelsWriteVariant = Initialize-VariantModelsWriteVariant -Label "MyLabel" -Value "MyValue"
$MarketModelsMarket = Initialize-MarketModelsMarket -Id 0 -Name "MyName" -DisplayName "MyDisplayName" -Currency "MyCurrency" -VatRate 0 -MarketPrefix "MyMarketPrefix" -CountryId 0 -CurrencyId 0 -CurrencyRate 0 -LanguageId 0 -Language "MyLanguage"
$ProductModelsWriteProduct = Initialize-ProductModelsWriteProduct -ArticleNumber "MyArticleNumber" -Names $SharedModelsLocalizableContent -Active $false -PurchasePrice 0 -PurchasePriceCurrency "MyPurchasePriceCurrency" -ShortTexts $SharedModelsLocalizableContent -LongTexts $SharedModelsLocalizableContent -TechTexts $SharedModelsLocalizableContent -BrandId 0 -SupplierId 0 -Items $ProductModelsWriteProductItem -CategoryIds 0 -ParameterValues $ProductParameterModelsWriteProductParameterValue -Variants $VariantModelsWriteVariant -Markets $MarketModelsMarket -FreightClassId 0 -IntrastatCode "MyIntrastatCode" -CountryOfOrigin "MyCountryOfOrigin" -VariantGroupId 0 -Vat 0 -VatType "MyVatType" -ExternalId "MyExternalId" -ActivationDate (Get-Date)

$VariantModelsWriteVariantGroup = Initialize-VariantModelsWriteVariantGroup -Name "MyName" -CollapseInLists $false -VariantLabels "MyVariantLabels" -Products $ProductModelsWriteProduct # VariantModelsWriteVariantGroup | The settings for the new group.
$ProductIdType = "0" # Int32 | The type of product id provided. (optional)
$Include = "MyInclude" # String | Comma separated list of product child collections to also include with the variant group. Set to ""product"" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Create a new group for the provided product id
try {
    $Result = New-VariantGroupWithProduct -ProductId $ProductId -VariantGroup $VariantGroup -ProductIdType $ProductIdType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling New-VariantGroupWithProduct: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the product, for which to create a group. | 
 **VariantGroup** | [**VariantModelsWriteVariantGroup**](VariantModelsWriteVariantGroup.md)| The settings for the new group. | 
 **ProductIdType** | **Int32**| The type of product id provided. | [optional] 
 **Include** | **String**| Comma separated list of product child collections to also include with the variant group. Set to &quot;&quot;product&quot;&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteVariantGroup"></a>
# **Invoke-DeleteVariantGroup**
> EnvelopeVariantModelsReadVariantGroup Invoke-DeleteVariantGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <Int32><br>

Delete an entire variant group

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

$GroupId = 56 # Int32 | The ID of the group to delete

# Delete an entire variant group
try {
    $Result = Invoke-DeleteVariantGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteVariantGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **Int32**| The ID of the group to delete | 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteVariantGroupByProductId"></a>
# **Invoke-DeleteVariantGroupByProductId**
> Envelope Invoke-DeleteVariantGroupByProductId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>

Delete an entire variant group

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

$ProductId = "MyProductId" # String | The id of a product that belongs to the group to remove.
$ProductIdType = "0" # Int32 | The type of product id provided. (optional)

# Delete an entire variant group
try {
    $Result = Invoke-DeleteVariantGroupByProductId -ProductId $ProductId -ProductIdType $ProductIdType
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteVariantGroupByProductId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of a product that belongs to the group to remove. | 
 **ProductIdType** | **Int32**| The type of product id provided. | [optional] 

### Return type

[**Envelope**](Envelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-VariantGroup"></a>
# **Get-VariantGroup**
> EnvelopeVariantModelsReadVariantGroup Get-VariantGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Get a specific variant group

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

$GroupId = 56 # Int32 | The ID of the group to get
$Include = "MyInclude" # String | Comma separated list of product child collections to also include with the variant group. Set to ""product"" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Get a specific variant group
try {
    $Result = Get-VariantGroup -GroupId $GroupId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-VariantGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **Int32**| The ID of the group to get | 
 **Include** | **String**| Comma separated list of product child collections to also include with the variant group. Set to &quot;&quot;product&quot;&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-VariantGroupByProductId"></a>
# **Get-VariantGroupByProductId**
> EnvelopeVariantModelsReadVariantGroup Get-VariantGroupByProductId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Get the variant group for the provided id

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

$ProductId = "MyProductId" # String | The id of the product, for which to get the group.
$ProductIdType = "0" # Int32 | The type of id. (optional)
$Include = "MyInclude" # String | Comma separated list of product child collections to also include with the variant group. Set to ""product"" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Get the variant group for the provided id
try {
    $Result = Get-VariantGroupByProductId -ProductId $ProductId -ProductIdType $ProductIdType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-VariantGroupByProductId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the product, for which to get the group. | 
 **ProductIdType** | **Int32**| The type of id. | [optional] 
 **Include** | **String**| Comma separated list of product child collections to also include with the variant group. Set to &quot;&quot;product&quot;&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-VariantLabels"></a>
# **Get-VariantLabels**
> EnvelopeString Get-VariantLabels<br>

Get all valid variant labels

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


# Get all valid variant labels
try {
    $Result = Get-VariantLabels
} catch {
    Write-Host ("Exception occurred when calling Get-VariantLabels: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EnvelopeString**](EnvelopeString.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-ProductFromVariantGroup"></a>
# **Remove-ProductFromVariantGroup**
> EnvelopeVariantModelsReadVariantGroup Remove-ProductFromVariantGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Remove a product from its variant group

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

$ProductId = "MyProductId" # String | The id of the product to remove from group.
$ProductIdType = "0" # Int32 | The type of product id provided. (optional)
$Include = "MyInclude" # String | Comma separated list of product child collections to also include with the variant group. Set to ""product"" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Remove a product from its variant group
try {
    $Result = Remove-ProductFromVariantGroup -ProductId $ProductId -ProductIdType $ProductIdType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Remove-ProductFromVariantGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the product to remove from group. | 
 **ProductIdType** | **Int32**| The type of product id provided. | [optional] 
 **Include** | **String**| Comma separated list of product child collections to also include with the variant group. Set to &quot;&quot;product&quot;&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Variant"></a>
# **Update-Variant**
> EnvelopeVariantModelsReadVariant Update-Variant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Variant] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>

Adds the variant details for the product with the provided ID

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

$ProductId = "MyProductId" # String | The ID of the product for which to update the variant details.
$VariantModelsWriteVariant = Initialize-VariantModelsWriteVariant -Label "MyLabel" -Value "MyValue" # VariantModelsWriteVariant[] | The variant details.
$ProductIdType = "0" # Int32 | The type of product id provided. (optional)

# Adds the variant details for the product with the provided ID
try {
    $Result = Update-Variant -ProductId $ProductId -Variant $Variant -ProductIdType $ProductIdType
} catch {
    Write-Host ("Exception occurred when calling Update-Variant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The ID of the product for which to update the variant details. | 
 **Variant** | [**VariantModelsWriteVariant[]**](VariantModelsWriteVariant.md)| The variant details. | 
 **ProductIdType** | **Int32**| The type of product id provided. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariant**](EnvelopeVariantModelsReadVariant.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-VariantGroup"></a>
# **Update-VariantGroup**
> EnvelopeVariantModelsReadVariantGroup Update-VariantGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VariantGroup] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Updates the settings of a group

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

$GroupId = 56 # Int32 | The ID of the group to update
$SharedModelsLocalizableContent = Initialize-SharedModelsLocalizableContent -LanguageCode "MyLanguageCode" -Content "MyContent"
$ProductModelsWriteProductItem = Initialize-ProductModelsWriteProductItem -ItemId 0 -ArticleNumber "MyArticleNumber" -Name "MyName" -Shelf "MyShelf" -Weight 0 -Length 0 -Width 0 -Height 0 -Gtin "MyGtin" -Active $false -ExternalId "MyExternalId"

$ProductParameterModelsWriteProductParameterValue = Initialize-ProductParameterModelsWriteProductParameterValue -ProductId 0 -ParameterId 0 -Value "MyValue" -LocalizedDescriptions $SharedModelsLocalizableContent

$VariantModelsWriteVariant = Initialize-VariantModelsWriteVariant -Label "MyLabel" -Value "MyValue"
$MarketModelsMarket = Initialize-MarketModelsMarket -Id 0 -Name "MyName" -DisplayName "MyDisplayName" -Currency "MyCurrency" -VatRate 0 -MarketPrefix "MyMarketPrefix" -CountryId 0 -CurrencyId 0 -CurrencyRate 0 -LanguageId 0 -Language "MyLanguage"
$ProductModelsWriteProduct = Initialize-ProductModelsWriteProduct -ArticleNumber "MyArticleNumber" -Names $SharedModelsLocalizableContent -Active $false -PurchasePrice 0 -PurchasePriceCurrency "MyPurchasePriceCurrency" -ShortTexts $SharedModelsLocalizableContent -LongTexts $SharedModelsLocalizableContent -TechTexts $SharedModelsLocalizableContent -BrandId 0 -SupplierId 0 -Items $ProductModelsWriteProductItem -CategoryIds 0 -ParameterValues $ProductParameterModelsWriteProductParameterValue -Variants $VariantModelsWriteVariant -Markets $MarketModelsMarket -FreightClassId 0 -IntrastatCode "MyIntrastatCode" -CountryOfOrigin "MyCountryOfOrigin" -VariantGroupId 0 -Vat 0 -VatType "MyVatType" -ExternalId "MyExternalId" -ActivationDate (Get-Date)

$VariantModelsWriteVariantGroup = Initialize-VariantModelsWriteVariantGroup -Name "MyName" -CollapseInLists $false -VariantLabels "MyVariantLabels" -Products $ProductModelsWriteProduct # VariantModelsWriteVariantGroup | The new settings for the group
$Include = "MyInclude" # String | Comma separated list of product child collections to also include with the variant group. Set to ""product"" to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Updates the settings of a group
try {
    $Result = Update-VariantGroup -GroupId $GroupId -VariantGroup $VariantGroup -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Update-VariantGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **Int32**| The ID of the group to update | 
 **VariantGroup** | [**VariantModelsWriteVariantGroup**](VariantModelsWriteVariantGroup.md)| The new settings for the group | 
 **Include** | **String**| Comma separated list of product child collections to also include with the variant group. Set to &quot;&quot;product&quot;&quot; to only include basic product data and to null (skip) to not include any product data. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeVariantModelsReadVariantGroup**](EnvelopeVariantModelsReadVariantGroup.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

