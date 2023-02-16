# ProductModelsWriteProductItemStock
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | A value to uniquely identity a single product item.  &lt;remarks&gt;This value can represent different fields, depending on configuration.&lt;/remarks&gt; | [optional] 
**Stock** | **Int32** | The stock value. | [optional] 
**StockSellable** | **Int32** | The sellable stock value.  &lt;remarks&gt;This value is read only.&lt;/remarks&gt; | [optional] 
**StockType** | **Int32** | The type of stock to be updated. See {Product.Models.ProductItemStockType} | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsWriteProductItemStock = Initialize-PSOpenAPIToolsProductModelsWriteProductItemStock  -Id null `
 -Stock null `
 -StockSellable null `
 -StockType null
```

- Convert the resource to JSON
```powershell
$ProductModelsWriteProductItemStock | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

