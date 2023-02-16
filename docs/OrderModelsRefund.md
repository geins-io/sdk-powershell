# OrderModelsRefund
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Unique identifier for this refund | [optional] 
**OrderRowId** | **Int32** | Reference to the order row that has been refunded | [optional] 
**PaymentDetailId** | **Int32** | Reference to the payment detail that has been refunded | [optional] 
**ReturnId** | **Int32** | Id number of the return. Can be used to group refunds. | [optional] 
**ArticleNumber** | **String** | Article number. If the refund is not bound to an order row this field contains an optional refund article number. | [optional] 
**CreatedAt** | **System.DateTime** | Datetime when the refund was created | [optional] 
**Total** | **Double** | Total amount refunded | [optional] 
**ReasonCode** | **Int32** | Reason code for the refund | [optional] 
**Reason** | **String** | Reason for refund | [optional] 
**ToBalance** | **Boolean** | Shows if the refund was deposited to the customers balance | [optional] 
**Vat** | **Double** | Vat percent in decimals for the refunded amount | [optional] 
**ItemId** | **Int32** | Item ID (SKU). | [optional] 
**RefundType** | **String** | Refund Type | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderModelsRefund = Initialize-PSOpenAPIToolsOrderModelsRefund  -Id null `
 -OrderRowId null `
 -PaymentDetailId null `
 -ReturnId null `
 -ArticleNumber null `
 -CreatedAt null `
 -Total null `
 -ReasonCode null `
 -Reason null `
 -ToBalance null `
 -Vat null `
 -ItemId null `
 -RefundType null
```

- Convert the resource to JSON
```powershell
$OrderModelsRefund | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

