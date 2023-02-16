# EnvelopeProductParameterModelsReadProductParameter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | A status message for the action taken. | [optional] 
**Details** | **String[]** | Any validation messages for the data on the current action. | [optional] 
**Resource** | [**ProductParameterModelsReadProductParameter**](ProductParameterModelsReadProductParameter.md) |  | [optional] 
**PageResult** | [**PageResult**](PageResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvelopeProductParameterModelsReadProductParameter = Initialize-PSOpenAPIToolsEnvelopeProductParameterModelsReadProductParameter  -Message null `
 -Details null `
 -Resource null `
 -PageResult null
```

- Convert the resource to JSON
```powershell
$EnvelopeProductParameterModelsReadProductParameter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

