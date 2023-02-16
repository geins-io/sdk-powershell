# PSOpenAPITools.PSOpenAPITools/Api.PriceListApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ListPriceLists**](PriceListApi.md#Invoke-ListPriceLists) | **GET** /API/PriceList/List | Get all price list definitions
[**Update-PricelistPrices**](PriceListApi.md#Update-PricelistPrices) | **PUT** /API/PriceList/Price | Updates price list prices


<a name="Invoke-ListPriceLists"></a>
# **Invoke-ListPriceLists**
> PriceListModelsPriceList[] Invoke-ListPriceLists<br>

Get all price list definitions

- Prices on campaign price lists (id: xxxxxx2) can not be updated. Any such entries will be ignored.  - ID for Ordinary, Sale and Campaign price lists starts from 1000000.   The ID is calculated by this formula, Market ID * 1000000 + Type of price list (Ordinary=0, Sale=1, Capaign=2)  So :  Ordinary price list for market with ID 1 has ID = 1000000  Sale price list for market with ID 1 has ID = 1000001  Campaign price list for market with ID 1 has ID = 1000002  Ordinary price list for market with ID 2 has ID = 2000000  And so on ...

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


# Get all price list definitions
try {
    $Result = Invoke-ListPriceLists
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListPriceLists: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PriceListModelsPriceList[]**](PriceListModelsPriceList.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-PricelistPrices"></a>
# **Update-PricelistPrices**
> PriceListModelsPriceListPriceResponse Update-PricelistPrices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PriceListPrices] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductIdType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PricesIncVat] <System.Nullable[Boolean]><br>

Updates price list prices

- Prices on campaign price lists (id: xxxxxx2) can not be updated. Any such entries will be ignored.  - ID for Ordinary, Sale and Campaign price lists starts from 1000000.   The ID is calculated by this formula, Market ID * 1000000 + Type of price list (Ordinary=0, Sale=1, Capaign=2)  So :  Ordinary price list for market with ID 1 has ID = 1000000  Sale price list for market with ID 1 has ID = 1000001  Campaign price list for market with ID 1 has ID = 1000002  Ordinary price list for market with ID 2 has ID = 2000000  And so on ...

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

$PriceListModelsWritePriceListPrice = Initialize-PriceListModelsWritePriceListPrice -PriceListId 0 -Price 0 -ProductId "MyProductId" -Currency "MyCurrency" -StaggeredCount 0 # PriceListModelsWritePriceListPrice[] | List of new price list prices.
$ProductIdType = "0" # Int32 | The type of product id supplied in {priceListPrices} (optional)
$PricesIncVat = $true # Boolean | Set to true if prices in {priceListPrices} includes VAT. Leave blank or set to false if they exclude VAT. (optional)

# Updates price list prices
try {
    $Result = Update-PricelistPrices -PriceListPrices $PriceListPrices -ProductIdType $ProductIdType -PricesIncVat $PricesIncVat
} catch {
    Write-Host ("Exception occurred when calling Update-PricelistPrices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PriceListPrices** | [**PriceListModelsWritePriceListPrice[]**](PriceListModelsWritePriceListPrice.md)| List of new price list prices. | 
 **ProductIdType** | **Int32**| The type of product id supplied in {priceListPrices} | [optional] 
 **PricesIncVat** | **Boolean**| Set to true if prices in {priceListPrices} includes VAT. Leave blank or set to false if they exclude VAT. | [optional] 

### Return type

[**PriceListModelsPriceListPriceResponse**](PriceListModelsPriceListPriceResponse.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

