# PSOpenAPITools.PSOpenAPITools/Api.ShippingApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ParcelGroup**](ShippingApi.md#New-ParcelGroup) | **POST** /API/Shipping/ParcelGroup | Create a new parcel group
[**Invoke-QueryShippingOptions**](ShippingApi.md#Invoke-QueryShippingOptions) | **POST** /API/Shipping/Query | Query shipping options


<a name="New-ParcelGroup"></a>
# **New-ParcelGroup**
> EnvelopeInt New-ParcelGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ParcelGroupOptions] <PSCustomObject><br>

Create a new parcel group

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

$ShippingModelsParcelGroupOptions = Initialize-ShippingModelsParcelGroupOptions -OrderIds 0 -MarkAsDelivered $false -SignalCapturesCreated $false # ShippingModelsParcelGroupOptions | Options for the new parcel group.

# Create a new parcel group
try {
    $Result = New-ParcelGroup -ParcelGroupOptions $ParcelGroupOptions
} catch {
    Write-Host ("Exception occurred when calling New-ParcelGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ParcelGroupOptions** | [**ShippingModelsParcelGroupOptions**](ShippingModelsParcelGroupOptions.md)| Options for the new parcel group. | 

### Return type

[**EnvelopeInt**](EnvelopeInt.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QueryShippingOptions"></a>
# **Invoke-QueryShippingOptions**
> ShippingModelsShippingOption[] Invoke-QueryShippingOptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShippingQuery] <PSCustomObject><br>

Query shipping options

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

$OrderCheckoutOrderRow = Initialize-OrderCheckoutOrderRow -Sku "MySku" -ProductId 0 -ExternalId "MyExternalId" -DiscountRate 0 -CartRowId 0 -ProductContainerBuildId 0 -Message "MyMessage" -ArticleNumber "MyArticleNumber" -Gtin "MyGtin" -Brand "MyBrand" -Categories "MyCategories" -Name "MyName" -Variant "MyVariant" -Quantity 0 -PriceIncVat 0 -PriceExVat 0 -ExpectedTotalPriceIncVat 0 -DiscountIncVat 0 -DiscountExVat 0 -ExpectedTotalDiscountIncVat 0 -ProductUrl "MyProductUrl" -ImageUrl "MyImageUrl" -Weight 0 -Height 0 -Width 0 -Length 0 -CampaignIds "MyCampaignIds" -CampaignGroupData "MyCampaignGroupData" -CampaignNames "MyCampaignNames" -ProductPriceCampaignId 0 -ProductPriceListId 0
$OrderFreightClass = Initialize-OrderFreightClass -Id 0 -Type 0 -Name "MyName" -TypeAsEnum "0"
$OrderCheckoutOrder = Initialize-OrderCheckoutOrder -OrderId "MyOrderId" -ExternalOrderId "MyExternalOrderId" -CartId "MyCartId" -SessionId "MySessionId" -SiteId 0 -Currency "MyCurrency" -Status "MyStatus" -IpAddress "MyIpAddress" -Message "MyMessage" -InternalMessage "MyInternalMessage" -Locale "MyLocale" -Rows $OrderCheckoutOrderRow -CampaignId 0 -CampaignCode "MyCampaignCode" -CampaignName "MyCampaignName" -CampaignIds "MyCampaignIds" -CampaignNames "MyCampaignNames" -CustomerId 0 -CustomerTypeId 0 -Gender "0" -DateOfBirth (Get-Date) -PersonalId "MyPersonalId" -UserAgent "MyUserAgent" -MetaData @{ key_example = "MyInner" } -PaymentId 0 -TransactionId "MyTransactionId" -SecondaryTransactionId "MySecondaryTransactionId" -Country "MyCountry" -Company "MyCompany" -OrganizationNumber "MyOrganizationNumber" -FirstName "MyFirstName" -LastName "MyLastName" -Email "MyEmail" -Address1 "MyAddress1" -Address2 "MyAddress2" -Zip "MyZip" -City "MyCity" -Region "MyRegion" -Phone "MyPhone" -MobilePhone "MyMobilePhone" -CareOf "MyCareOf" -ShippingId 0 -ShippingCountry "MyShippingCountry" -ShippingCompany "MyShippingCompany" -ShippingOrganizationNumber "MyShippingOrganizationNumber" -ShippingFirstName "MyShippingFirstName" -ShippingLastName "MyShippingLastName" -ShippingEmail "MyShippingEmail" -ShippingAddress1 "MyShippingAddress1" -ShippingAddress2 "MyShippingAddress2" -ShippingZip "MyShippingZip" -ShippingCity "MyShippingCity" -ShippingRegion "MyShippingRegion" -ShippingPhone "MyShippingPhone" -ShippingMobilePhone "MyShippingMobilePhone" -ShippingCareOf "MyShippingCareOf" -PickupPoint "MyPickupPoint" -DesiredDeliveryDate (Get-Date) -FreightClass $OrderFreightClass -Sum 0 -ExpectedSum 0 -OrderValueIncVat 0 -OrderValueExVat 0 -ItemValueIncVat 0 -ItemValueExVat 0 -DiscountIncVat 0 -DiscountExVat 0 -PercentDiscount 0 -Balance 0 -ShippingFeeIncVat 0 -ShippingFeeExVat 0 -PaymentFeeIncVat 0 -PaymentFeeExVat 0

$ShippingModelsShippingQuery = Initialize-ShippingModelsShippingQuery -SiteId 0 -CountryId 0 -ShippingId 0 -DeliveryOptionId "00000000-0000-0000-0000-000000000000" -Order $OrderCheckoutOrder -MinimumFreeShippingLimit 0 # ShippingModelsShippingQuery | The query to filter shipping options by.

# Query shipping options
try {
    $Result = Invoke-QueryShippingOptions -ShippingQuery $ShippingQuery
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryShippingOptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ShippingQuery** | [**ShippingModelsShippingQuery**](ShippingModelsShippingQuery.md)| The query to filter shipping options by. | 

### Return type

[**ShippingModelsShippingOption[]**](ShippingModelsShippingOption.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

