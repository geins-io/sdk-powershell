# ProductModelsReadProductItemStock
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ItemId** | **Int32** | A value to uniquely identity a single product item. | [optional] 
**Stock** | **Int32** | The physical stock value. | [optional] 
**StockOversellable** | **Int32** | The oversellable stock value. | [optional] 
**StockStatic** | **Int32** | The static stock value. | [optional] 
**StockSellable** | **Int32** | The sellable stock value. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadProductItemStock = Initialize-PSOpenAPIToolsProductModelsReadProductItemStock  -ItemId null `
 -Stock null `
 -StockOversellable null `
 -StockStatic null `
 -StockSellable null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadProductItemStock | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

