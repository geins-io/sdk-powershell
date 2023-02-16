# PriceListModelsPriceListPriceResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Information about the outcome of the request. | [optional] 
**Invalid** | [**PriceListModelsWritePriceListPrice[]**](PriceListModelsWritePriceListPrice.md) | Supplied PriceList prices that failed validation. | [optional] 
**NotFound** | [**PriceListModelsWritePriceListPrice[]**](PriceListModelsWritePriceListPrice.md) | Supplied PriceList prices that were technically valid, but couldn&#39;t be found. | [optional] 
**UpdateCount** | **Int32** | Number of price updates resulting from the request. | [optional] 

## Examples

- Prepare the resource
```powershell
$PriceListModelsPriceListPriceResponse = Initialize-PSOpenAPIToolsPriceListModelsPriceListPriceResponse  -Message null `
 -Invalid null `
 -NotFound null `
 -UpdateCount null
```

- Convert the resource to JSON
```powershell
$PriceListModelsPriceListPriceResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

