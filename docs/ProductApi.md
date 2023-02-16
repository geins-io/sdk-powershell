# PSOpenAPITools.PSOpenAPITools/Api.ProductApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-ImageToProduct**](ProductApi.md#Add-ImageToProduct) | **PUT** /API/Product/{productId}/Image/{imageName} | Adds an image relation to a product
[**Add-AvailabilityMonitor**](ProductApi.md#Add-AvailabilityMonitor) | **POST** /API/Product/MonitorAvailability | Add a product availability monitor
[**Add-CategoryToProduct**](ProductApi.md#Add-CategoryToProduct) | **PUT** /API/Product/{productId}/Category | Adds a category relation to a product
[**Add-RelatedProductsToProduct**](ProductApi.md#Add-RelatedProductsToProduct) | **PUT** /API/Product/{productId}/Related | Add related products to a product
[**Invoke-BatchUpdateProductItems**](ProductApi.md#Invoke-BatchUpdateProductItems) | **PUT** /API/Product/Items | Updates product items in batch
[**Invoke-BatchUpdateStockValues**](ProductApi.md#Invoke-BatchUpdateStockValues) | **PUT** /API/Product/Stock | Update stock values for multiple product items
[**New-Product**](ProductApi.md#New-Product) | **POST** /API/Product | Create a new product
[**New-ProductItems**](ProductApi.md#New-ProductItems) | **POST** /API/Product/{productId}/Item | Create a new product item
[**Get-ProductById**](ProductApi.md#Get-ProductById) | **GET** /API/Product/{productId} | Get a specific product
[**Get-ProductItemById**](ProductApi.md#Get-ProductItemById) | **GET** /API/Product/Item/{itemId} | Get a specific product item
[**Invoke-LinkRelatedProductsByRelationId**](ProductApi.md#Invoke-LinkRelatedProductsByRelationId) | **PUT** /API/Product/{productId}/Related/{relationTypeId} | Add related products to a product using a fixed relation type
[**Invoke-ListAllProductItemsPaged**](ProductApi.md#Invoke-ListAllProductItemsPaged) | **GET** /API/Product/Items/{page} | Get all product items with pagination
[**Invoke-ListFeeds**](ProductApi.md#Invoke-ListFeeds) | **GET** /API/Product/Feeds | Gets a list of all feeds
[**Invoke-ListProductItems**](ProductApi.md#Invoke-ListProductItems) | **GET** /API/Product/Items | Get all product items
[**Invoke-ListProductRelationTypes**](ProductApi.md#Invoke-ListProductRelationTypes) | **GET** /API/Product/RelationTypes | Gets a list of product relation types
[**Invoke-QueryProducts**](ProductApi.md#Invoke-QueryProducts) | **POST** /API/Product/Query | Query products
[**Invoke-QueryProductsPaged**](ProductApi.md#Invoke-QueryProductsPaged) | **POST** /API/Product/Query/{page} | Query products with pagination
[**Invoke-QueryStock**](ProductApi.md#Invoke-QueryStock) | **POST** /API/Product/Stock/Query | Query stock
[**Update-Product**](ProductApi.md#Update-Product) | **PUT** /API/Product/{productId} | Updates a product
[**Update-ProductItem**](ProductApi.md#Update-ProductItem) | **PUT** /API/Product/Item/{itemId} | Updates a product item


<a name="Add-ImageToProduct"></a>
# **Add-ImageToProduct**
> Envelope Add-ImageToProduct<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ImageName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsPrimaryImage] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>

Adds an image relation to a product

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

$ProductId = "MyProductId" # String | The id of the product to update.
$ImageName = "MyImageName" # String | The name of the image to set to product.
$IsPrimaryImage = $true # Boolean | Specifies whether {imageName} should be set as the primary image of the product. (optional)
$ProductIdType = "0" # Int32 | The type of product id supplied in {productId}. (optional)

# Adds an image relation to a product
try {
    $Result = Add-ImageToProduct -ProductId $ProductId -ImageName $ImageName -IsPrimaryImage $IsPrimaryImage -ProductIdType $ProductIdType
} catch {
    Write-Host ("Exception occurred when calling Add-ImageToProduct: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the product to update. | 
 **ImageName** | **String**| The name of the image to set to product. | 
 **IsPrimaryImage** | **Boolean**| Specifies whether {imageName} should be set as the primary image of the product. | [optional] 
 **ProductIdType** | **Int32**| The type of product id supplied in {productId}. | [optional] 

### Return type

[**Envelope**](Envelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-AvailabilityMonitor"></a>
# **Add-AvailabilityMonitor**
> Envelope Add-AvailabilityMonitor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Model] <PSCustomObject><br>

Add a product availability monitor

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

$ProductModelsMonitorSku = Initialize-ProductModelsMonitorSku -SiteId 0 -LanguageCode "MyLanguageCode" -Email "MyEmail" -SkuId 0 # ProductModelsMonitorSku | 

# Add a product availability monitor
try {
    $Result = Add-AvailabilityMonitor -Model $Model
} catch {
    Write-Host ("Exception occurred when calling Add-AvailabilityMonitor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Model** | [**ProductModelsMonitorSku**](ProductModelsMonitorSku.md)|  | 

### Return type

[**Envelope**](Envelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-CategoryToProduct"></a>
# **Add-CategoryToProduct**
> Envelope Add-CategoryToProduct<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductCategory] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>

Adds a category relation to a product

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

$ProductId = "MyProductId" # String | The id of the product to update.
$ProductModelsProductCategory = Initialize-ProductModelsProductCategory -CategoryId 0 # ProductModelsProductCategory | The category to relate the product to.
$ProductIdType = "0" # Int32 | The type of product id supplied in {productId}. (optional)

# Adds a category relation to a product
try {
    $Result = Add-CategoryToProduct -ProductId $ProductId -ProductCategory $ProductCategory -ProductIdType $ProductIdType
} catch {
    Write-Host ("Exception occurred when calling Add-CategoryToProduct: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the product to update. | 
 **ProductCategory** | [**ProductModelsProductCategory**](ProductModelsProductCategory.md)| The category to relate the product to. | 
 **ProductIdType** | **Int32**| The type of product id supplied in {productId}. | [optional] 

### Return type

[**Envelope**](Envelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-RelatedProductsToProduct"></a>
# **Add-RelatedProductsToProduct**
> ProductModelsRelatedProductEnvelope Add-RelatedProductsToProduct<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RelatedProducts] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>

Add related products to a product

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

$ProductId = "MyProductId" # String | The id of the main product to which the relations will be created
$ProductModelsWriteRelatedProduct = Initialize-ProductModelsWriteRelatedProduct -RelatedProductId "MyRelatedProductId" -RelationTypeId 0 # ProductModelsWriteRelatedProduct[] | The list of related products to link with the main product.
$ProductIdType = "0" # Int32 | The type of product id for {productId} and supplied in {relatedProducts}. (optional)

# Add related products to a product
try {
    $Result = Add-RelatedProductsToProduct -ProductId $ProductId -RelatedProducts $RelatedProducts -ProductIdType $ProductIdType
} catch {
    Write-Host ("Exception occurred when calling Add-RelatedProductsToProduct: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the main product to which the relations will be created | 
 **RelatedProducts** | [**ProductModelsWriteRelatedProduct[]**](ProductModelsWriteRelatedProduct.md)| The list of related products to link with the main product. | 
 **ProductIdType** | **Int32**| The type of product id for {productId} and supplied in {relatedProducts}. | [optional] 

### Return type

[**ProductModelsRelatedProductEnvelope**](ProductModelsRelatedProductEnvelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BatchUpdateProductItems"></a>
# **Invoke-BatchUpdateProductItems**
> Envelope Invoke-BatchUpdateProductItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItems] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItemIdType] <System.Nullable[Int32]><br>

Updates product items in batch

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

$ProductModelsWriteProductItem = Initialize-ProductModelsWriteProductItem -ItemId 0 -ArticleNumber "MyArticleNumber" -Name "MyName" -Shelf "MyShelf" -Weight 0 -Length 0 -Width 0 -Height 0 -Gtin "MyGtin" -Active $false -ExternalId "MyExternalId" # ProductModelsWriteProductItem[] | The product items to update
$ProductItemIdType = "0" # Int32 | The type of product item id (optional)

# Updates product items in batch
try {
    $Result = Invoke-BatchUpdateProductItems -ProductItems $ProductItems -ProductItemIdType $ProductItemIdType
} catch {
    Write-Host ("Exception occurred when calling Invoke-BatchUpdateProductItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductItems** | [**ProductModelsWriteProductItem[]**](ProductModelsWriteProductItem.md)| The product items to update | 
 **ProductItemIdType** | **Int32**| The type of product item id | [optional] 

### Return type

[**Envelope**](Envelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BatchUpdateStockValues"></a>
# **Invoke-BatchUpdateStockValues**
> ProductModelsStockEnvelope Invoke-BatchUpdateStockValues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItemStocks] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItemIdType] <System.Nullable[Int32]><br>

Update stock values for multiple product items

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

$ProductModelsWriteProductItemStock = Initialize-ProductModelsWriteProductItemStock -Id "MyId" -Stock 0 -StockSellable 0 -StockType "0" # ProductModelsWriteProductItemStock[] | List of product item ids with new stock values.
$ProductItemIdType = "0" # Int32 | The type of product item id supplied in {productItemStocks}. (optional)

# Update stock values for multiple product items
try {
    $Result = Invoke-BatchUpdateStockValues -ProductItemStocks $ProductItemStocks -ProductItemIdType $ProductItemIdType
} catch {
    Write-Host ("Exception occurred when calling Invoke-BatchUpdateStockValues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductItemStocks** | [**ProductModelsWriteProductItemStock[]**](ProductModelsWriteProductItemStock.md)| List of product item ids with new stock values. | 
 **ProductItemIdType** | **Int32**| The type of product item id supplied in {productItemStocks}. | [optional] 

### Return type

[**ProductModelsStockEnvelope**](ProductModelsStockEnvelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Product"></a>
# **New-Product**
> EnvelopeProductModelsReadProduct New-Product<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Product] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Create a new product

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
$ProductModelsWriteProduct = Initialize-ProductModelsWriteProduct -ArticleNumber "MyArticleNumber" -Names $SharedModelsLocalizableContent -Active $false -PurchasePrice 0 -PurchasePriceCurrency "MyPurchasePriceCurrency" -ShortTexts $SharedModelsLocalizableContent -LongTexts $SharedModelsLocalizableContent -TechTexts $SharedModelsLocalizableContent -BrandId 0 -SupplierId 0 -Items $ProductModelsWriteProductItem -CategoryIds 0 -ParameterValues $ProductParameterModelsWriteProductParameterValue -Variants $VariantModelsWriteVariant -Markets $MarketModelsMarket -FreightClassId 0 -IntrastatCode "MyIntrastatCode" -CountryOfOrigin "MyCountryOfOrigin" -VariantGroupId 0 -Vat 0 -VatType "MyVatType" -ExternalId "MyExternalId" -ActivationDate (Get-Date) # ProductModelsWriteProduct | The product to create.
$Include = "MyInclude" # String | Comma separated list of child-collections to also include with the created product. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Create a new product
try {
    $Result = New-Product -Product $Product -Include $Include
} catch {
    Write-Host ("Exception occurred when calling New-Product: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Product** | [**ProductModelsWriteProduct**](ProductModelsWriteProduct.md)| The product to create. | 
 **Include** | **String**| Comma separated list of child-collections to also include with the created product. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeProductModelsReadProduct**](EnvelopeProductModelsReadProduct.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-ProductItems"></a>
# **New-ProductItems**
> EnvelopeProductModelsReadProductItem New-ProductItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItem] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>

Create a new product item

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

$ProductId = "MyProductId" # String | The id of the product to create an item on.
$ProductModelsWriteProductItem = Initialize-ProductModelsWriteProductItem -ItemId 0 -ArticleNumber "MyArticleNumber" -Name "MyName" -Shelf "MyShelf" -Weight 0 -Length 0 -Width 0 -Height 0 -Gtin "MyGtin" -Active $false -ExternalId "MyExternalId" # ProductModelsWriteProductItem | The product item to create.
$ProductIdType = "0" # Int32 | The type of product id supplied in {productId}. (optional)

# Create a new product item
try {
    $Result = New-ProductItems -ProductId $ProductId -ProductItem $ProductItem -ProductIdType $ProductIdType
} catch {
    Write-Host ("Exception occurred when calling New-ProductItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the product to create an item on. | 
 **ProductItem** | [**ProductModelsWriteProductItem**](ProductModelsWriteProductItem.md)| The product item to create. | 
 **ProductIdType** | **Int32**| The type of product id supplied in {productId}. | [optional] 

### Return type

[**EnvelopeProductModelsReadProductItem**](EnvelopeProductModelsReadProductItem.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProductById"></a>
# **Get-ProductById**
> EnvelopeProductModelsReadProduct Get-ProductById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Get a specific product

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

$ProductId = "MyProductId" # String | The id of the product to get.
$ProductIdType = "0" # Int32 | The type of product id supplied in {productId}. (optional)
$Include = "MyInclude" # String | Comma separated list of child-collections to also include with the requested product. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Get a specific product
try {
    $Result = Get-ProductById -ProductId $ProductId -ProductIdType $ProductIdType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-ProductById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the product to get. | 
 **ProductIdType** | **Int32**| The type of product id supplied in {productId}. | [optional] 
 **Include** | **String**| Comma separated list of child-collections to also include with the requested product. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeProductModelsReadProduct**](EnvelopeProductModelsReadProduct.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProductItemById"></a>
# **Get-ProductItemById**
> ProductProductItemEnvelope Get-ProductItemById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItemIdType] <System.Nullable[Int32]><br>

Get a specific product item

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

$ItemId = "MyItemId" # String | The id of the product item to get.
$ProductItemIdType = "0" # Int32 | The type of product item id supplied in {itemId}. (optional)

# Get a specific product item
try {
    $Result = Get-ProductItemById -ItemId $ItemId -ProductItemIdType $ProductItemIdType
} catch {
    Write-Host ("Exception occurred when calling Get-ProductItemById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ItemId** | **String**| The id of the product item to get. | 
 **ProductItemIdType** | **Int32**| The type of product item id supplied in {itemId}. | [optional] 

### Return type

[**ProductProductItemEnvelope**](ProductProductItemEnvelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-LinkRelatedProductsByRelationId"></a>
# **Invoke-LinkRelatedProductsByRelationId**
> ProductModelsRelatedProductEnvelope Invoke-LinkRelatedProductsByRelationId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RelationTypeId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RelatedProducts] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>

Add related products to a product using a fixed relation type

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

$ProductId = "MyProductId" # String | The id of the main product to which the relations will be created
$RelationTypeId = 56 # Int32 | The relation type id that will apply to all related products in {relatedProducts}
$ProductModelsWriteRelatedProduct = Initialize-ProductModelsWriteRelatedProduct -RelatedProductId "MyRelatedProductId" -RelationTypeId 0 # ProductModelsWriteRelatedProduct[] | The list of related products to link with the main product.
$ProductIdType = "0" # Int32 | The type of product id for {productId} and supplied in {relatedProducts}. (optional)

# Add related products to a product using a fixed relation type
try {
    $Result = Invoke-LinkRelatedProductsByRelationId -ProductId $ProductId -RelationTypeId $RelationTypeId -RelatedProducts $RelatedProducts -ProductIdType $ProductIdType
} catch {
    Write-Host ("Exception occurred when calling Invoke-LinkRelatedProductsByRelationId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the main product to which the relations will be created | 
 **RelationTypeId** | **Int32**| The relation type id that will apply to all related products in {relatedProducts} | 
 **RelatedProducts** | [**ProductModelsWriteRelatedProduct[]**](ProductModelsWriteRelatedProduct.md)| The list of related products to link with the main product. | 
 **ProductIdType** | **Int32**| The type of product id for {productId} and supplied in {relatedProducts}. | [optional] 

### Return type

[**ProductModelsRelatedProductEnvelope**](ProductModelsRelatedProductEnvelope.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAllProductItemsPaged"></a>
# **Invoke-ListAllProductItemsPaged**
> EnvelopeListProductModelsReadProductItem Invoke-ListAllProductItemsPaged<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <Int32><br>

Get all product items with pagination

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

$Page = 56 # Int32 | The page to fetch

# Get all product items with pagination
try {
    $Result = Invoke-ListAllProductItemsPaged -Page $Page
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAllProductItemsPaged: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page to fetch | 

### Return type

[**EnvelopeListProductModelsReadProductItem**](EnvelopeListProductModelsReadProductItem.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListFeeds"></a>
# **Invoke-ListFeeds**
> EnvelopeListProductModelsReadFeed Invoke-ListFeeds<br>

Gets a list of all feeds

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


# Gets a list of all feeds
try {
    $Result = Invoke-ListFeeds
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListFeeds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EnvelopeListProductModelsReadFeed**](EnvelopeListProductModelsReadFeed.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListProductItems"></a>
# **Invoke-ListProductItems**
> ProductModelsReadProductItem[] Invoke-ListProductItems<br>

Get all product items

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


# Get all product items
try {
    $Result = Invoke-ListProductItems
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListProductItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductModelsReadProductItem[]**](ProductModelsReadProductItem.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListProductRelationTypes"></a>
# **Invoke-ListProductRelationTypes**
> EnvelopeListProductModelsReadRelationType Invoke-ListProductRelationTypes<br>

Gets a list of product relation types

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


# Gets a list of product relation types
try {
    $Result = Invoke-ListProductRelationTypes
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListProductRelationTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EnvelopeListProductModelsReadRelationType**](EnvelopeListProductModelsReadRelationType.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QueryProducts"></a>
# **Invoke-QueryProducts**
> EnvelopeListProductModelsReadProduct Invoke-QueryProducts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Query products

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

$ProductModelsProductQuery = Initialize-ProductModelsProductQuery -UpdatedAfter (Get-Date) -ProductIds 0 -ArticleNumbers "MyArticleNumbers" -OnlySellable $false -FeedId 0 -BatchId "00000000-0000-0000-0000-000000000000" # ProductModelsProductQuery | The details of the query
$Include = "MyInclude" # String | Comma separated list of child-collections to also include with the queried products. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Query products
try {
    $Result = Invoke-QueryProducts -Query $Query -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryProducts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | [**ProductModelsProductQuery**](ProductModelsProductQuery.md)| The details of the query | 
 **Include** | **String**| Comma separated list of child-collections to also include with the queried products. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeListProductModelsReadProduct**](EnvelopeListProductModelsReadProduct.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QueryProductsPaged"></a>
# **Invoke-QueryProductsPaged**
> EnvelopeListProductModelsReadProduct Invoke-QueryProductsPaged<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Query products with pagination

The {Product.Models.ProductQuery.BatchId} property is mandatory when fetching a page other than the first page.  If no BatchId is provided for the first page, a new batch is created and the BatchId can be found in the {Envelope.PageResult} field.

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

$Page = 56 # Int32 | The page to fetch. To start a new batched query it is mandatory to send in page=1
$ProductModelsProductQuery = Initialize-ProductModelsProductQuery -UpdatedAfter (Get-Date) -ProductIds 0 -ArticleNumbers "MyArticleNumbers" -OnlySellable $false -FeedId 0 -BatchId "00000000-0000-0000-0000-000000000000" # ProductModelsProductQuery | The details of the query
$Include = "MyInclude" # String | Comma separated list of child-collections to also include with the queried products. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Query products with pagination
try {
    $Result = Invoke-QueryProductsPaged -Page $Page -Query $Query -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryProductsPaged: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page to fetch. To start a new batched query it is mandatory to send in page&#x3D;1 | 
 **Query** | [**ProductModelsProductQuery**](ProductModelsProductQuery.md)| The details of the query | 
 **Include** | **String**| Comma separated list of child-collections to also include with the queried products. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeListProductModelsReadProduct**](EnvelopeListProductModelsReadProduct.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QueryStock"></a>
# **Invoke-QueryStock**
> ProductModelsReadProductItemStock[] Invoke-QueryStock<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItemIds] <System.Nullable[Int32][]><br>

Query stock

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

$ProductItemIds = 0 # Int32[] | The details of the query.

# Query stock
try {
    $Result = Invoke-QueryStock -ProductItemIds $ProductItemIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryStock: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductItemIds** | [**Int32[]**](Int32.md)| The details of the query. | 

### Return type

[**ProductModelsReadProductItemStock[]**](ProductModelsReadProductItemStock.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Product"></a>
# **Update-Product**
> EnvelopeProductModelsReadProduct Update-Product<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Product] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>

Updates a product

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

$ProductId = "MyProductId" # String | The id of the product to update.
$SharedModelsLocalizableContent = Initialize-SharedModelsLocalizableContent -LanguageCode "MyLanguageCode" -Content "MyContent"
$ProductModelsWriteProductItem = Initialize-ProductModelsWriteProductItem -ItemId 0 -ArticleNumber "MyArticleNumber" -Name "MyName" -Shelf "MyShelf" -Weight 0 -Length 0 -Width 0 -Height 0 -Gtin "MyGtin" -Active $false -ExternalId "MyExternalId"

$ProductParameterModelsWriteProductParameterValue = Initialize-ProductParameterModelsWriteProductParameterValue -ProductId 0 -ParameterId 0 -Value "MyValue" -LocalizedDescriptions $SharedModelsLocalizableContent

$VariantModelsWriteVariant = Initialize-VariantModelsWriteVariant -Label "MyLabel" -Value "MyValue"
$MarketModelsMarket = Initialize-MarketModelsMarket -Id 0 -Name "MyName" -DisplayName "MyDisplayName" -Currency "MyCurrency" -VatRate 0 -MarketPrefix "MyMarketPrefix" -CountryId 0 -CurrencyId 0 -CurrencyRate 0 -LanguageId 0 -Language "MyLanguage"
$ProductModelsWriteProduct = Initialize-ProductModelsWriteProduct -ArticleNumber "MyArticleNumber" -Names $SharedModelsLocalizableContent -Active $false -PurchasePrice 0 -PurchasePriceCurrency "MyPurchasePriceCurrency" -ShortTexts $SharedModelsLocalizableContent -LongTexts $SharedModelsLocalizableContent -TechTexts $SharedModelsLocalizableContent -BrandId 0 -SupplierId 0 -Items $ProductModelsWriteProductItem -CategoryIds 0 -ParameterValues $ProductParameterModelsWriteProductParameterValue -Variants $VariantModelsWriteVariant -Markets $MarketModelsMarket -FreightClassId 0 -IntrastatCode "MyIntrastatCode" -CountryOfOrigin "MyCountryOfOrigin" -VariantGroupId 0 -Vat 0 -VatType "MyVatType" -ExternalId "MyExternalId" -ActivationDate (Get-Date) # ProductModelsWriteProduct | The product data to update.
$ProductIdType = "0" # Int32 | The type of product id supplied in {productId}. (optional)
$Include = "MyInclude" # String | Comma separated list of child-collections to also include with the updated product. See  {Product.Models.ProductIncludes} names for valid options. (optional)

# Updates a product
try {
    $Result = Update-Product -ProductId $ProductId -Product $Product -ProductIdType $ProductIdType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Update-Product: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProductId** | **String**| The id of the product to update. | 
 **Product** | [**ProductModelsWriteProduct**](ProductModelsWriteProduct.md)| The product data to update. | 
 **ProductIdType** | **Int32**| The type of product id supplied in {productId}. | [optional] 
 **Include** | **String**| Comma separated list of child-collections to also include with the updated product. See  {Product.Models.ProductIncludes} names for valid options. | [optional] 

### Return type

[**EnvelopeProductModelsReadProduct**](EnvelopeProductModelsReadProduct.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-ProductItem"></a>
# **Update-ProductItem**
> EnvelopeProductModelsReadProductItem Update-ProductItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItem] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductItemIdType] <System.Nullable[Int32]><br>

Updates a product item

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

$ItemId = "MyItemId" # String | The id of the product item to update.
$ProductModelsWriteProductItem = Initialize-ProductModelsWriteProductItem -ItemId 0 -ArticleNumber "MyArticleNumber" -Name "MyName" -Shelf "MyShelf" -Weight 0 -Length 0 -Width 0 -Height 0 -Gtin "MyGtin" -Active $false -ExternalId "MyExternalId" # ProductModelsWriteProductItem | The product item data to update.
$ProductItemIdType = "0" # Int32 | The type of product item id supplied in {itemId}. (optional)

# Updates a product item
try {
    $Result = Update-ProductItem -ItemId $ItemId -ProductItem $ProductItem -ProductItemIdType $ProductItemIdType
} catch {
    Write-Host ("Exception occurred when calling Update-ProductItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ItemId** | **String**| The id of the product item to update. | 
 **ProductItem** | [**ProductModelsWriteProductItem**](ProductModelsWriteProductItem.md)| The product item data to update. | 
 **ProductItemIdType** | **Int32**| The type of product item id supplied in {itemId}. | [optional] 

### Return type

[**EnvelopeProductModelsReadProductItem**](EnvelopeProductModelsReadProductItem.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

