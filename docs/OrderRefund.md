# OrderRefund
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RefundId** | **String** |  | [optional] 
**RefundInstanceId** | **Int32** |  | [optional] 
**OrderId** | **Int32** |  | [optional] 
**ExternalOrderId** | **String** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Reference** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**ProcessedOn** | **System.DateTime** |  | [optional] 
**RefundedItemTotal** | **Double** |  | [optional] 
**RefundedShippingFee** | **Double** |  | [optional] 
**RefundedPaymentFee** | **Double** |  | [optional] 
**RefundedDiscount** | **Double** |  | [optional] 
**RefundedBalance** | **Double** |  | [optional] 
**VatRate** | **Double** |  | [optional] 
**PaymentName** | **String** |  | [optional] 
**Locale** | **String** |  | [optional] 
**Rows** | [**OrderRefundRow[]**](OrderRefundRow.md) |  | [optional] 
**OrderTransactionId** | **String** |  | [optional] 
**SecondaryOrderTransactionId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderRefund = Initialize-PSOpenAPIToolsOrderRefund  -RefundId 00000000-0000-0000-0000-000000000000 `
 -RefundInstanceId null `
 -OrderId null `
 -ExternalOrderId null `
 -ExternalId null `
 -Reference null `
 -Description null `
 -ProcessedOn null `
 -RefundedItemTotal null `
 -RefundedShippingFee null `
 -RefundedPaymentFee null `
 -RefundedDiscount null `
 -RefundedBalance null `
 -VatRate null `
 -PaymentName null `
 -Locale null `
 -Rows null `
 -OrderTransactionId null `
 -SecondaryOrderTransactionId null
```

- Convert the resource to JSON
```powershell
$OrderRefund | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

