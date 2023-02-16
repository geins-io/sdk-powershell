# ProductModelsRelatedProductEnvelope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Information about the outcome of the request. | [optional] 
**Invalid** | [**ProductModelsWriteRelatedProduct[]**](ProductModelsWriteRelatedProduct.md) | Supplied relatedProducts that failed validation. | [optional] 
**NotFound** | [**ProductModelsWriteRelatedProduct[]**](ProductModelsWriteRelatedProduct.md) | Supplied relatedProducts that were technically valid, but couldn&#39;t be found. | [optional] 
**UpdateCount** | **Int32** | Number of related product updates resulting from the request. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsRelatedProductEnvelope = Initialize-PSOpenAPIToolsProductModelsRelatedProductEnvelope  -Message null `
 -Invalid null `
 -NotFound null `
 -UpdateCount null
```

- Convert the resource to JSON
```powershell
$ProductModelsRelatedProductEnvelope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

