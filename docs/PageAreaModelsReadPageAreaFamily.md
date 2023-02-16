# PageAreaModelsReadPageAreaFamily
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**FilterableProperties** | **String** | This page area family has access to the following properties that can be used for filtering, when rendering itself. | [optional] 
**Areas** | [**PageAreaModelsReadPageArea[]**](PageAreaModelsReadPageArea.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageAreaModelsReadPageAreaFamily = Initialize-PSOpenAPIToolsPageAreaModelsReadPageAreaFamily  -Id null `
 -Name null `
 -FilterableProperties null `
 -Areas null
```

- Convert the resource to JSON
```powershell
$PageAreaModelsReadPageAreaFamily | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

