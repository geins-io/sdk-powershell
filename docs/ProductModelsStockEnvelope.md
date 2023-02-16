# ProductModelsStockEnvelope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Information about the outcome of the request. | [optional] 
**Invalid** | [**ProductModelsWriteProductItemStock[]**](ProductModelsWriteProductItemStock.md) | Supplied productItemStocks that failed validation. | [optional] 
**NotFound** | [**ProductModelsWriteProductItemStock[]**](ProductModelsWriteProductItemStock.md) | Supplied productItemStocks that were technically valid, but couldn&#39;t be found. | [optional] 
**UpdateCount** | **Int32** | Number of stock updates resulting from the request. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsStockEnvelope = Initialize-PSOpenAPIToolsProductModelsStockEnvelope  -Message null `
 -Invalid null `
 -NotFound null `
 -UpdateCount null
```

- Convert the resource to JSON
```powershell
$ProductModelsStockEnvelope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

