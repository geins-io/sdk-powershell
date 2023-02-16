# EnvelopePageAreaModelsReadPageAreaFamily
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | A status message for the action taken. | [optional] 
**Details** | **String[]** | Any validation messages for the data on the current action. | [optional] 
**Resource** | [**PageAreaModelsReadPageAreaFamily**](PageAreaModelsReadPageAreaFamily.md) |  | [optional] 
**PageResult** | [**PageResult**](PageResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvelopePageAreaModelsReadPageAreaFamily = Initialize-PSOpenAPIToolsEnvelopePageAreaModelsReadPageAreaFamily  -Message null `
 -Details null `
 -Resource null `
 -PageResult null
```

- Convert the resource to JSON
```powershell
$EnvelopePageAreaModelsReadPageAreaFamily | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

