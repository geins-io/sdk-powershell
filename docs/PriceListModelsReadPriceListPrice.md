# PriceListModelsReadPriceListPrice
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductId** | **Int32** | The id of the product that this price applies to. | [optional] 
**PriceListId** | **Int32** | The id of the price list that this price is associated with. | [optional] 
**PriceListName** | **String** | The name of the price list that this price is associated with. | [optional] 
**PriceIncVat** | **Double** | The price, inc VAT, in the currency of the associated price list. | [optional] 
**PriceExVat** | **Double** | The price, ex VAT, in the currency of the associated price list. | [optional] 
**VatRate** | **Double** | The Vat Rate | [optional] 
**Country** | **String** | The 2-letter ISO country code for this price. | [optional] 
**Currency** | **String** | The 3-letter ISO 4217 currency code for this price. | [optional] 
**StaggeredCount** | **Int32** | Staggered count for this price. Defaults to 1. | [optional] 
**ValidFrom** | **System.DateTime** | The date the price is valid from. | [optional] 
**ValidTo** | **System.DateTime** | The date the price is valid to. | [optional] 

## Examples

- Prepare the resource
```powershell
$PriceListModelsReadPriceListPrice = Initialize-PSOpenAPIToolsPriceListModelsReadPriceListPrice  -ProductId null `
 -PriceListId null `
 -PriceListName null `
 -PriceIncVat null `
 -PriceExVat null `
 -VatRate null `
 -Country null `
 -Currency null `
 -StaggeredCount null `
 -ValidFrom null `
 -ValidTo null
```

- Convert the resource to JSON
```powershell
$PriceListModelsReadPriceListPrice | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

