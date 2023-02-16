# ProductParameterModelsWriteProductParameter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ParameterId** | **Int32** | The unique identifier for the parameter. | [optional] 
**GroupId** | **Int32** | The unique identifier of the group that this parameter belongs to. | [optional] 
**ParameterType** | **Int32** | The type of parameter. | [optional] 
**Name** | **String** | The non-localized name of the parameter. | [optional] 
**LocalizedNames** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized names of the parameter. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductParameterModelsWriteProductParameter = Initialize-PSOpenAPIToolsProductParameterModelsWriteProductParameter  -ParameterId null `
 -GroupId null `
 -ParameterType null `
 -Name null `
 -LocalizedNames null
```

- Convert the resource to JSON
```powershell
$ProductParameterModelsWriteProductParameter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

