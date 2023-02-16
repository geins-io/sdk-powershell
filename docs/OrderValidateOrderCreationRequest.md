# OrderValidateOrderCreationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderId** | **Int32** |  | [optional] 
**UserId** | **Int32** |  | [optional] 
**Email** | **String** |  | [optional] 
**Phone** | **String** |  | [optional] 
**Currency** | **String** |  | [optional] 
**SumIncVat** | **Double** |  | [optional] 
**BalanceIncVat** | **Double** |  | [optional] 
**Items** | [**OrderValidateOrderCreationRequestStockItem[]**](OrderValidateOrderCreationRequestStockItem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderValidateOrderCreationRequest = Initialize-PSOpenAPIToolsOrderValidateOrderCreationRequest  -OrderId null `
 -UserId null `
 -Email null `
 -Phone null `
 -Currency null `
 -SumIncVat null `
 -BalanceIncVat null `
 -Items null
```

- Convert the resource to JSON
```powershell
$OrderValidateOrderCreationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

