# OrderModelsPaymentDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Unique identifier for this payment detail. Exception: For some payment options this field can be 0. These orders only have one payment detail. | [optional] 
**PaymentId** | **Int32** | Payment method id | [optional] 
**Name** | **String** | The name of the payment method | [optional] 
**DisplayName** | **String** | The display name of the payment method | [optional] 
**TransactionId** | **String** | The transaction id (external reference). | [optional] 
**SecondaryTransactionId** | **String** | The secondary transaction id, if any (external reference). | [optional] 
**ReservationNumber** | **String** | The reservation number. This field is not available for all payment methods. | [optional] 
**ReservationDate** | **System.DateTime** | Reservation date | [optional] 
**PaymentDate** | **System.DateTime** | Payment date | [optional] 
**Total** | **Double** | Total | [optional] 
**Payed** | **Boolean** | Shows if the order is paid using this payment method | [optional] 
**PaymentFee** | **Double** | The payment fee | [optional] 
**ShippingFee** | **Double** | The shipping fee | [optional] 
**PaymentOption** | **String** | The name of the payment option, if any.  This doesn&#39;t have to be the same as the payment name. Eg &quot;&quot;Direct bank payment&quot;&quot;, &quot;&quot;Card&quot;&quot;, &quot;&quot;Invoice&quot;&quot; etc. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderModelsPaymentDetail = Initialize-PSOpenAPIToolsOrderModelsPaymentDetail  -Id null `
 -PaymentId null `
 -Name null `
 -DisplayName null `
 -TransactionId null `
 -SecondaryTransactionId null `
 -ReservationNumber null `
 -ReservationDate null `
 -PaymentDate null `
 -Total null `
 -Payed null `
 -PaymentFee null `
 -ShippingFee null `
 -PaymentOption null
```

- Convert the resource to JSON
```powershell
$OrderModelsPaymentDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

