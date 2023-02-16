# ProductParameterModelsReadProductParameterGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupId** | **Int32** | The unique identifier for the groups. | [optional] 
**Name** | **String** | The non-localized name of the group. | [optional] 
**LocalizedNames** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized names of the group. | [optional] 
**ParameterIds** | **Int32[]** | The ids of the parameters belonging to this group. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductParameterModelsReadProductParameterGroup = Initialize-PSOpenAPIToolsProductParameterModelsReadProductParameterGroup  -GroupId null `
 -Name null `
 -LocalizedNames null `
 -ParameterIds null
```

- Convert the resource to JSON
```powershell
$ProductParameterModelsReadProductParameterGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

