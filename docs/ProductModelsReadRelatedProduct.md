# ProductModelsReadRelatedProduct
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductId** | **Int32** | The unique identifier for the product. | [optional] 
**RelatedProductId** | **Int32** | The unique identifier for the related product. | [optional] 
**RelationTypeId** | **Int32** | The product relation type id. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadRelatedProduct = Initialize-PSOpenAPIToolsProductModelsReadRelatedProduct  -ProductId null `
 -RelatedProductId null `
 -RelationTypeId null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadRelatedProduct | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

