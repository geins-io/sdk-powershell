# ProductParameterModelsReadProductParameter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ParameterId** | **Int32** | The unique identifier for the parameter. | [optional] 
**GroupId** | **Int32** | The unique identifier of the group that this parameter belongs to. | [optional] 
**GroupName** | **String** | The name of the group that this parameter belongs to. | [optional] 
**ParameterType** | **Int32** | The type of parameter. | [optional] 
**Name** | **String** | The non-localized name of the parameter. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductParameterModelsReadProductParameter = Initialize-PSOpenAPIToolsProductParameterModelsReadProductParameter  -ParameterId null `
 -GroupId null `
 -GroupName null `
 -ParameterType null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ProductParameterModelsReadProductParameter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

