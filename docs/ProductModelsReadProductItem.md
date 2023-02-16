# ProductModelsReadProductItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ItemId** | **Int32** | The product item id. | [optional] 
**ArticleNumber** | **String** | The article number for the product item. | [optional] 
**ProductId** | **Int32** | The id of the product that the item belongs to. | [optional] 
**Name** | **String** | The name of the product item. | [optional] 
**Shelf** | **String** | The shelf name where the product item can be found. | [optional] 
**Weight** | **Int32** | The weight of the item in grams (g). | [optional] 
**Length** | **Int32** | The length of the item in millimeters (mm). | [optional] 
**Width** | **Int32** | The width of the item in millimeters (mm). | [optional] 
**Height** | **Int32** | The height of the item in millimeters (mm). | [optional] 
**Gtin** | **String** | The GTIN number for the item. | [optional] 
**DateCreated** | **System.DateTime** | The date the item was created. | [optional] 
**DateUpdated** | **System.DateTime** | The date the item was last updated. | [optional] 
**Active** | **Boolean** | The current state of the item. | [optional] 
**ExternalId** | **String** | External Id of the product item. | [optional] 
**Stock** | [**ProductModelsReadProductItemStock**](ProductModelsReadProductItemStock.md) |  | [optional] 
**ShippingFees** | [**ProductModelsReadShippingFee[]**](ProductModelsReadShippingFee.md) | The lowest shipping fees for each market and country for the product item. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadProductItem = Initialize-PSOpenAPIToolsProductModelsReadProductItem  -ItemId null `
 -ArticleNumber null `
 -ProductId null `
 -Name null `
 -Shelf null `
 -Weight null `
 -Length null `
 -Width null `
 -Height null `
 -Gtin null `
 -DateCreated null `
 -DateUpdated null `
 -Active null `
 -ExternalId null `
 -Stock null `
 -ShippingFees null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadProductItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

