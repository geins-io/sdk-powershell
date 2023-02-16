# PSOpenAPITools.PSOpenAPITools/Api.OrderApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-CommentToOrder**](OrderApi.md#Add-CommentToOrder) | **POST** /API/Order/{id}/Comment | Adds a comment to the order
[**New-Order**](OrderApi.md#New-Order) | **POST** /API/Order | Post a new order
[**New-OrderId**](OrderApi.md#New-OrderId) | **POST** /API/Order/Id | Create a new order id
[**Invoke-DeleteOrder**](OrderApi.md#Invoke-DeleteOrder) | **DELETE** /API/Order/{id} | Deletes or deactivates an order
[**Get-CaptureById**](OrderApi.md#Get-CaptureById) | **GET** /API/Order/Capture/{captureId} | Get Capture by Id
[**Get-OrderById**](OrderApi.md#Get-OrderById) | **GET** /API/Order/{id}/{include} | Get an instance of a order
[**Get-OrderStatuses**](OrderApi.md#Get-OrderStatuses) | **GET** /API/Order/Statuses | Get a list of available order statuses
[**Get-RefundById**](OrderApi.md#Get-RefundById) | **GET** /API/Order/Refund/{refundId} | Get Refund by Id
[**Invoke-PartialUpdateOfOrder**](OrderApi.md#Invoke-PartialUpdateOfOrder) | **PATCH** /API/Order/{id} | Partial update of an order
[**Invoke-QueryOrders**](OrderApi.md#Invoke-QueryOrders) | **POST** /API/Order/Query | Query the order repository
[**Set-CaptureAsProcessed**](OrderApi.md#Set-CaptureAsProcessed) | **POST** /API/Order/Capture/SetAsProcessed | Set a capture as processed (&#x3D; captured)
[**Set-PaymentAsPayed**](OrderApi.md#Set-PaymentAsPayed) | **POST** /API/Order/PaymentDetail/{paymentDetailId}/SetAsPayed | Set Payment Detail as payed
[**Set-RefundAsProcessed**](OrderApi.md#Set-RefundAsProcessed) | **POST** /API/Order/Refund/SetAsProcessed | Set a refund as processed (&#x3D; settled)
[**Update-OrderStatus**](OrderApi.md#Update-OrderStatus) | **POST** /API/Order/{id}/Status/{status}/{transactionId}/{secondaryTransactionId} | Update order status
[**Update-TransactionData**](OrderApi.md#Update-TransactionData) | **POST** /API/Order/{id}/TransactionData | Updates transaction data on an order
[**Confirm-Order**](OrderApi.md#Confirm-Order) | **POST** /API/Order/ValidateCreation | Validates order data for order creation.


<a name="Add-CommentToOrder"></a>
# **Add-CommentToOrder**
> SystemCollectionsHashtable Add-CommentToOrder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderComment] <PSCustomObject><br>

Adds a comment to the order

This add to (not replace) any previous comments.

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

$Id = 56 # Int32 | Order ID.
$APIOrderOrderComment = Initialize-APIOrderOrderComment -OrderId 0 -Comment "MyComment" -System $false # APIOrderOrderComment | The comment

# Adds a comment to the order
try {
    $Result = Add-CommentToOrder -Id $Id -OrderComment $OrderComment
} catch {
    Write-Host ("Exception occurred when calling Add-CommentToOrder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Order ID. | 
 **OrderComment** | [**APIOrderOrderComment**](APIOrderOrderComment.md)| The comment | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Order"></a>
# **New-Order**
> EnvelopeInt New-Order<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Order] <PSCustomObject><br>

Post a new order

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

$OrderModelsPaymentDetail = Initialize-OrderModelsPaymentDetail -Id 0 -PaymentId 0 -Name "MyName" -DisplayName "MyDisplayName" -TransactionId "MyTransactionId" -SecondaryTransactionId "MySecondaryTransactionId" -ReservationNumber "MyReservationNumber" -ReservationDate (Get-Date) -PaymentDate (Get-Date) -Total 0 -Payed $false -PaymentFee 0 -ShippingFee 0 -PaymentOption "MyPaymentOption"
$OrderModelsShippingDetail = Initialize-OrderModelsShippingDetail -Id 0 -ShippingId 0 -Name "MyName" -ParcelNumber "MyParcelNumber" -ShippingDate (Get-Date) -TrackingUrl "MyTrackingUrl" -ExternalDeliveryOptionId "MyExternalDeliveryOptionId" -ExternalServiceId "MyExternalServiceId" -ExternalCarrierId "MyExternalCarrierId" -PickupPoint "MyPickupPoint"
$OrderModelsAddress = Initialize-OrderModelsAddress -Company "MyCompany" -CareOf "MyCareOf" -State "MyState" -Country "MyCountry" -FirstName "MyFirstName" -LastName "MyLastName" -Email "MyEmail" -AddressLine1 "MyAddressLine1" -AddressLine2 "MyAddressLine2" -AddressLine3 "MyAddressLine3" -Zip "MyZip" -City "MyCity" -Phone "MyPhone" -Mobile "MyMobile" -EntryCode "MyEntryCode"
$OrderModelsOrderRow = Initialize-OrderModelsOrderRow -Id 0
$OrderModelsRefund = Initialize-OrderModelsRefund -Id 0 -OrderRowId 0 -PaymentDetailId 0 -ReturnId 0 -ArticleNumber "MyArticleNumber" -CreatedAt (Get-Date) -Total 0 -ReasonCode 0 -Reason "MyReason" -ToBalance $false -Vat 0 -ItemId 0 -RefundType "MyRefundType"
$OrderModelsOrder = Initialize-OrderModelsOrder -Id 0 -ExternalId "MyExternalId" -PersonalId "MyPersonalId" -CustomerId 0 -CustomerTypeId 0 -CreatedAt (Get-Date) -UpdatedAt (Get-Date) -CompletedAt (Get-Date) -Status "MyStatus" -Currency "MyCurrency" -CurrencyRate 0 -MarketId 0 -MarketName "MyMarketName" -Language "MyLanguage" -OrderTotal 0 -ExpectedSum 0 -VATTotal 0 -OrderValueIncVat 0 -OrderValueExVat 0 -ItemValueIncVat 0 -ItemValueExVat 0 -Discount 0 -DiscountExVat 0 -FromBalance 0 -ShippingFee 0 -ShippingFeeExVat 0 -PaymentFee 0 -PaymentFeeExVat 0 -Message "MyMessage" -OrderMessages "MyOrderMessages" -PaymentDetails $OrderModelsPaymentDetail -ShippingDetails $OrderModelsShippingDetail -ShippingAddress $OrderModelsAddress -BillingAddress $OrderModelsAddress -Rows $OrderModelsOrderRow -Refunds $OrderModelsRefund -Ip "MyIp" -UserAgent "MyUserAgent" -ServiceLocation "MyServiceLocation" -CampaignCode "MyCampaignCode" -CampaignCodeId 0 -Percent 0 -DesiredDeliveryDate (Get-Date) -Gender $false -CartId 0 -SessionId "MySessionId" -ExternalOrderStatus "0" -CampaignIds "MyCampaignIds" -CampaignNames "MyCampaignNames" -MetaData @{ key_example = "MyInner" } -PublicId "00000000-0000-0000-0000-000000000000" # OrderModelsOrder | The order object.

# Post a new order
try {
    $Result = New-Order -Order $Order
} catch {
    Write-Host ("Exception occurred when calling New-Order: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Order** | [**OrderModelsOrder**](OrderModelsOrder.md)| The order object. | 

### Return type

[**EnvelopeInt**](EnvelopeInt.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-OrderId"></a>
# **New-OrderId**
> EnvelopeInt New-OrderId<br>

Create a new order id

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


# Create a new order id
try {
    $Result = New-OrderId
} catch {
    Write-Host ("Exception occurred when calling New-OrderId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EnvelopeInt**](EnvelopeInt.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteOrder"></a>
# **Invoke-DeleteOrder**
> SystemCollectionsHashtable Invoke-DeleteOrder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Operation] <Int32><br>

Deletes or deactivates an order

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

$Id = 56 # Int32 | The ID of the order to delete.
$Operation = "0" # Int32 | The method of deletion desired.

# Deletes or deactivates an order
try {
    $Result = Invoke-DeleteOrder -Id $Id -Operation $Operation
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteOrder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The ID of the order to delete. | 
 **Operation** | **Int32**| The method of deletion desired. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CaptureById"></a>
# **Get-CaptureById**
> OrderCapture Get-CaptureById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptureId] <String><br>

Get Capture by Id

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

$CaptureId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Capture ID.

# Get Capture by Id
try {
    $Result = Get-CaptureById -CaptureId $CaptureId
} catch {
    Write-Host ("Exception occurred when calling Get-CaptureById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CaptureId** | **String**| Capture ID. | 

### Return type

[**OrderCapture**](OrderCapture.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OrderById"></a>
# **Get-OrderById**
> OrderModelsOrder Get-OrderById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CombineProductContainerRows] <System.Nullable[Boolean]><br>

Get an instance of a order

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

$Id = 56 # Int32 | The ID of the order to get.
$Include = "MyInclude" # String | A comma separated string of what related collections to include with this result set. The  possible values are: rows, paymentdetails, shippingdetails and refunds.
$CombineProductContainerRows = $true # Boolean | If true, will combine all order rows that are part of a container into a single container row. (optional)

# Get an instance of a order
try {
    $Result = Get-OrderById -Id $Id -Include $Include -CombineProductContainerRows $CombineProductContainerRows
} catch {
    Write-Host ("Exception occurred when calling Get-OrderById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The ID of the order to get. | 
 **Include** | **String**| A comma separated string of what related collections to include with this result set. The  possible values are: rows, paymentdetails, shippingdetails and refunds. | 
 **CombineProductContainerRows** | **Boolean**| If true, will combine all order rows that are part of a container into a single container row. | [optional] 

### Return type

[**OrderModelsOrder**](OrderModelsOrder.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OrderStatuses"></a>
# **Get-OrderStatuses**
> OrderModelsOrderStatus[] Get-OrderStatuses<br>

Get a list of available order statuses

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


# Get a list of available order statuses
try {
    $Result = Get-OrderStatuses
} catch {
    Write-Host ("Exception occurred when calling Get-OrderStatuses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrderModelsOrderStatus[]**](OrderModelsOrderStatus.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-RefundById"></a>
# **Get-RefundById**
> OrderRefund Get-RefundById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RefundId] <String><br>

Get Refund by Id

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

$RefundId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Refund ID.

# Get Refund by Id
try {
    $Result = Get-RefundById -RefundId $RefundId
} catch {
    Write-Host ("Exception occurred when calling Get-RefundById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RefundId** | **String**| Refund ID. | 

### Return type

[**OrderRefund**](OrderRefund.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-PartialUpdateOfOrder"></a>
# **Invoke-PartialUpdateOfOrder**
> SystemCollectionsHashtable Invoke-PartialUpdateOfOrder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Order] <PSCustomObject><br>

Partial update of an order

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

$Id = 56 # Int32 | The orderId of the order to update
$OrderModelsOrderUpdate = Initialize-OrderModelsOrderUpdate -ExternalId "MyExternalId" -ParcelNumber "MyParcelNumber" -ExternalOrderStatus "0" # OrderModelsOrderUpdate | The order object containing the properties that should be updated.

# Partial update of an order
try {
    $Result = Invoke-PartialUpdateOfOrder -Id $Id -Order $Order
} catch {
    Write-Host ("Exception occurred when calling Invoke-PartialUpdateOfOrder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| The orderId of the order to update | 
 **Order** | [**OrderModelsOrderUpdate**](OrderModelsOrderUpdate.md)| The order object containing the properties that should be updated. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QueryOrders"></a>
# **Invoke-QueryOrders**
> OrderModelsOrder[] Invoke-QueryOrders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <PSCustomObject><br>

Query the order repository

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

$OrderModelsOrderQuery = Initialize-OrderModelsOrderQuery -Updated (Get-Date) -StatusList "MyStatusList" -MarketId 0 -PaymentName "MyPaymentName" -ParcelGroupId 0 -CustomerId 0 -Email "MyEmail" -Include "MyInclude" -ExternalOrderStatus 0 -CombineProductContainerRows $false -PackingLocationId 0 # OrderModelsOrderQuery | The details of the query.

# Query the order repository
try {
    $Result = Invoke-QueryOrders -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryOrders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | [**OrderModelsOrderQuery**](OrderModelsOrderQuery.md)| The details of the query. | 

### Return type

[**OrderModelsOrder[]**](OrderModelsOrder.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-CaptureAsProcessed"></a>
# **Set-CaptureAsProcessed**
> SystemCollectionsHashtable Set-CaptureAsProcessed<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProcessedCapture] <PSCustomObject><br>

Set a capture as processed (= captured)

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

$OrderProcessedCapture = Initialize-OrderProcessedCapture -CaptureId "00000000-0000-0000-0000-000000000000" -ExternalId "MyExternalId" -Reference "MyReference" -ProcessedOn (Get-Date) # OrderProcessedCapture | Contains CaptureId and optional metadata about capture.

# Set a capture as processed (= captured)
try {
    $Result = Set-CaptureAsProcessed -ProcessedCapture $ProcessedCapture
} catch {
    Write-Host ("Exception occurred when calling Set-CaptureAsProcessed: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProcessedCapture** | [**OrderProcessedCapture**](OrderProcessedCapture.md)| Contains CaptureId and optional metadata about capture. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-PaymentAsPayed"></a>
# **Set-PaymentAsPayed**
> SystemCollectionsHashtable Set-PaymentAsPayed<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PaymentDetailId] <Int32><br>

Set Payment Detail as payed

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

$PaymentDetailId = 56 # Int32 | Payment Detail ID.

# Set Payment Detail as payed
try {
    $Result = Set-PaymentAsPayed -PaymentDetailId $PaymentDetailId
} catch {
    Write-Host ("Exception occurred when calling Set-PaymentAsPayed: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PaymentDetailId** | **Int32**| Payment Detail ID. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-RefundAsProcessed"></a>
# **Set-RefundAsProcessed**
> SystemCollectionsHashtable Set-RefundAsProcessed<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProcessedRefund] <PSCustomObject><br>

Set a refund as processed (= settled)

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

$OrderProcessedRefund = Initialize-OrderProcessedRefund -RefundId "00000000-0000-0000-0000-000000000000" -ExternalId "MyExternalId" -Reference "MyReference" -ProcessedOn (Get-Date) # OrderProcessedRefund | Contains RefundId and optional metadata about refund.

# Set a refund as processed (= settled)
try {
    $Result = Set-RefundAsProcessed -ProcessedRefund $ProcessedRefund
} catch {
    Write-Host ("Exception occurred when calling Set-RefundAsProcessed: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProcessedRefund** | [**OrderProcessedRefund**](OrderProcessedRefund.md)| Contains RefundId and optional metadata about refund. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-OrderStatus"></a>
# **Update-OrderStatus**
> SystemCollectionsHashtable Update-OrderStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransactionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SecondaryTransactionId] <String><br>

Update order status

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

$Id = 56 # Int32 | Order ID.
$Status = "0" # Int32 | Order status. These statuses can be set: cancelled, on-hold, inactive, out-of-stock,  backorder, completed, pending.
$TransactionId = "MyTransactionId" # String | A transaction id can be set here if status is set to pending.
$SecondaryTransactionId = "MySecondaryTransactionId" # String | A secondary transaction id, if any, can be set here if status is set to pending.

# Update order status
try {
    $Result = Update-OrderStatus -Id $Id -Status $Status -TransactionId $TransactionId -SecondaryTransactionId $SecondaryTransactionId
} catch {
    Write-Host ("Exception occurred when calling Update-OrderStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Order ID. | 
 **Status** | **Int32**| Order status. These statuses can be set: cancelled, on-hold, inactive, out-of-stock,  backorder, completed, pending. | 
 **TransactionId** | **String**| A transaction id can be set here if status is set to pending. | 
 **SecondaryTransactionId** | **String**| A secondary transaction id, if any, can be set here if status is set to pending. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-TransactionData"></a>
# **Update-TransactionData**
> SystemCollectionsHashtable Update-TransactionData<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransactionData] <PSCustomObject><br>

Updates transaction data on an order

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

$Id = 56 # Int32 | Order ID.
$APIOrderTransactionData = Initialize-APIOrderTransactionData -OrderId 0 -TransactionId "MyTransactionId" # APIOrderTransactionData | The transaction data

# Updates transaction data on an order
try {
    $Result = Update-TransactionData -Id $Id -TransactionData $TransactionData
} catch {
    Write-Host ("Exception occurred when calling Update-TransactionData: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int32**| Order ID. | 
 **TransactionData** | [**APIOrderTransactionData**](APIOrderTransactionData.md)| The transaction data | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Confirm-Order"></a>
# **Confirm-Order**
> SystemCollectionsHashtable Confirm-Order<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Request] <PSCustomObject><br>

Validates order data for order creation.

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

$OrderValidateOrderCreationRequestStockItem = Initialize-OrderValidateOrderCreationRequestStockItem -ItemId 0 -Quantity 0
$OrderValidateOrderCreationRequest = Initialize-OrderValidateOrderCreationRequest -OrderId 0 -UserId 0 -Email "MyEmail" -Phone "MyPhone" -Currency "MyCurrency" -SumIncVat 0 -BalanceIncVat 0 -Items $OrderValidateOrderCreationRequestStockItem # OrderValidateOrderCreationRequest | The order data to validate.

# Validates order data for order creation.
try {
    $Result = Confirm-Order -Request $Request
} catch {
    Write-Host ("Exception occurred when calling Confirm-Order: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Request** | [**OrderValidateOrderCreationRequest**](OrderValidateOrderCreationRequest.md)| The order data to validate. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

