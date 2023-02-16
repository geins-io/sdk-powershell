# ProductModelsReadImage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductId** | **Int32** |  | [optional] 
**Url** | **String** | Url of Image | [optional] 
**Order** | **Int32** | Order of image (ascending). First image is the main image for the product. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadImage = Initialize-PSOpenAPIToolsProductModelsReadImage  -ProductId null `
 -Url null `
 -Order null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadImage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

