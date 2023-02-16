# ProductModelsWriteRelatedProduct
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RelatedProductId** | **String** | The unique identifier for the related product. | [optional] 
**RelationTypeId** | **Int32** | The product relation type id. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsWriteRelatedProduct = Initialize-PSOpenAPIToolsProductModelsWriteRelatedProduct  -RelatedProductId null `
 -RelationTypeId null
```

- Convert the resource to JSON
```powershell
$ProductModelsWriteRelatedProduct | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

