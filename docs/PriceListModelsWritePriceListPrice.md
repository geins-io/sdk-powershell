# PriceListModelsWritePriceListPrice
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PriceListId** | **Int32** | The price list id. | [optional] 
**Price** | **Double** | The price in the currency of the associated price list. | [optional] 
**ProductId** | **String** | The id of the product that this price applies to. | [optional] 
**Currency** | **String** | The 3-letter ISO 4217 currency code for this price. If ommitted the price will be updated on the default market. | [optional] 
**StaggeredCount** | **Int32** | Staggered count for this price. Defaults to 1. | [optional] 

## Examples

- Prepare the resource
```powershell
$PriceListModelsWritePriceListPrice = Initialize-PSOpenAPIToolsPriceListModelsWritePriceListPrice  -PriceListId null `
 -Price null `
 -ProductId null `
 -Currency null `
 -StaggeredCount null
```

- Convert the resource to JSON
```powershell
$PriceListModelsWritePriceListPrice | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

