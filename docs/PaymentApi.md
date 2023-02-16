# PSOpenAPITools.PSOpenAPITools/Api.PaymentApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-QueryPaymentOptions**](PaymentApi.md#Invoke-QueryPaymentOptions) | **POST** /API/Payment/Query | Query payment options


<a name="Invoke-QueryPaymentOptions"></a>
# **Invoke-QueryPaymentOptions**
> PaymentModelsPaymentOption[] Invoke-QueryPaymentOptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <PSCustomObject><br>

Query payment options

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

$PaymentModelsPaymentOptionQuery = Initialize-PaymentModelsPaymentOptionQuery -SiteId 0 -Email "MyEmail" -CustomerTypeId 0 -CountryId 0 -Sum 0 # PaymentModelsPaymentOptionQuery | The payment query

# Query payment options
try {
    $Result = Invoke-QueryPaymentOptions -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryPaymentOptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | [**PaymentModelsPaymentOptionQuery**](PaymentModelsPaymentOptionQuery.md)| The payment query | 

### Return type

[**PaymentModelsPaymentOption[]**](PaymentModelsPaymentOption.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

