# PSOpenAPITools.PSOpenAPITools/Api.MarketApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-MarketById**](MarketApi.md#Get-MarketById) | **GET** /API/Market/{marketId} | Get a specific market
[**Invoke-ListMarkets**](MarketApi.md#Invoke-ListMarkets) | **GET** /API/Market/List | Gets a list of all markets


<a name="Get-MarketById"></a>
# **Get-MarketById**
> EnvelopeMarketModelsMarket Get-MarketById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MarketId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MarketIdType] <System.Nullable[Int32]><br>

Get a specific market

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

$MarketId = "MyMarketId" # String | The id of the market to get.
$MarketIdType = "0" # Int32 | The type of market id supplied. See {Market.Models.MarketIdType} for valid options. (optional)

# Get a specific market
try {
    $Result = Get-MarketById -MarketId $MarketId -MarketIdType $MarketIdType
} catch {
    Write-Host ("Exception occurred when calling Get-MarketById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MarketId** | **String**| The id of the market to get. | 
 **MarketIdType** | **Int32**| The type of market id supplied. See {Market.Models.MarketIdType} for valid options. | [optional] 

### Return type

[**EnvelopeMarketModelsMarket**](EnvelopeMarketModelsMarket.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListMarkets"></a>
# **Invoke-ListMarkets**
> MarketModelsMarket Invoke-ListMarkets<br>

Gets a list of all markets

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


# Gets a list of all markets
try {
    $Result = Invoke-ListMarkets
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListMarkets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MarketModelsMarket**](MarketModelsMarket.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

