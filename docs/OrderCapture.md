# OrderCapture
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CaptureId** | **String** |  | [optional] 
**OrderPaymentId** | **String** |  | [optional] 
**OrderId** | **Int32** |  | [optional] 
**ExternalOrderId** | **String** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Reference** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**ProcessedOn** | **System.DateTime** |  | [optional] 
**CapturedItemTotal** | **Double** |  | [optional] 
**CapturedShippingFee** | **Double** |  | [optional] 
**CapturedPaymentFee** | **Double** |  | [optional] 
**CapturedDiscount** | **Double** |  | [optional] 
**CapturedBalance** | **Double** |  | [optional] 
**VatRate** | **Double** |  | [optional] 
**TrackingNumber** | **String** |  | [optional] 
**ShippingName** | **String** |  | [optional] 
**TrackingUri** | **String** |  | [optional] 
**ShippingMethod** | **String** |  | [optional] 
**PaymentName** | **String** |  | [optional] 
**Locale** | **String** |  | [optional] 
**Rows** | [**OrderCaptureRow[]**](OrderCaptureRow.md) |  | [optional] 
**OrderTransactionId** | **String** |  | [optional] 
**SecondaryOrderTransactionId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderCapture = Initialize-PSOpenAPIToolsOrderCapture  -CaptureId 00000000-0000-0000-0000-000000000000 `
 -OrderPaymentId 00000000-0000-0000-0000-000000000000 `
 -OrderId null `
 -ExternalOrderId null `
 -ExternalId null `
 -Reference null `
 -Description null `
 -ProcessedOn null `
 -CapturedItemTotal null `
 -CapturedShippingFee null `
 -CapturedPaymentFee null `
 -CapturedDiscount null `
 -CapturedBalance null `
 -VatRate null `
 -TrackingNumber null `
 -ShippingName null `
 -TrackingUri null `
 -ShippingMethod null `
 -PaymentName null `
 -Locale null `
 -Rows null `
 -OrderTransactionId null `
 -SecondaryOrderTransactionId null
```

- Convert the resource to JSON
```powershell
$OrderCapture | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

