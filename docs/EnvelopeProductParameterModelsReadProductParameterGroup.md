# EnvelopeProductParameterModelsReadProductParameterGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | A status message for the action taken. | [optional] 
**Details** | **String[]** | Any validation messages for the data on the current action. | [optional] 
**Resource** | [**ProductParameterModelsReadProductParameterGroup**](ProductParameterModelsReadProductParameterGroup.md) |  | [optional] 
**PageResult** | [**PageResult**](PageResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvelopeProductParameterModelsReadProductParameterGroup = Initialize-PSOpenAPIToolsEnvelopeProductParameterModelsReadProductParameterGroup  -Message null `
 -Details null `
 -Resource null `
 -PageResult null
```

- Convert the resource to JSON
```powershell
$EnvelopeProductParameterModelsReadProductParameterGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

