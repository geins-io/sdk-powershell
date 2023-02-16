# ProductModelsReadProductUrl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** | The canonical url to the product. | [optional] 
**Market** | **Int32** | The market of the url. | [optional] 
**Language** | **String** | The language code of the url. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadProductUrl = Initialize-PSOpenAPIToolsProductModelsReadProductUrl  -Url null `
 -Market null `
 -Language null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadProductUrl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

