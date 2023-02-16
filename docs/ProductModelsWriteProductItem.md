# ProductModelsWriteProductItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ItemId** | **Int32** | Id of the product item. | [optional] 
**ArticleNumber** | **String** | The article number for the product item. | [optional] 
**Name** | **String** | The name of the product item. | [optional] 
**Shelf** | **String** | The shelf name where the product item can be found. | [optional] 
**Weight** | **Int32** | The weight of the item in grams (g). | [optional] 
**Length** | **Int32** | The length of the item in millimeters (mm). | [optional] 
**Width** | **Int32** | The width of the item in millimeters (mm). | [optional] 
**Height** | **Int32** | The height of the item in millimeters (mm). | [optional] 
**Gtin** | **String** | The GTIN number for the item. | [optional] 
**Active** | **Boolean** | The current state of the item. | [optional] 
**ExternalId** | **String** | External Id of the product item. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsWriteProductItem = Initialize-PSOpenAPIToolsProductModelsWriteProductItem  -ItemId null `
 -ArticleNumber null `
 -Name null `
 -Shelf null `
 -Weight null `
 -Length null `
 -Width null `
 -Height null `
 -Gtin null `
 -Active null `
 -ExternalId null
```

- Convert the resource to JSON
```powershell
$ProductModelsWriteProductItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

