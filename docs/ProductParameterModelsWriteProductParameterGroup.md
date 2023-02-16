# ProductParameterModelsWriteProductParameterGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The non-localized name of the group. | [optional] 
**LocalizedNames** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized names of the group. | [optional] 
**ParameterIds** | **Int32[]** | The ids of the parameters belonging to this group. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductParameterModelsWriteProductParameterGroup = Initialize-PSOpenAPIToolsProductParameterModelsWriteProductParameterGroup  -Name null `
 -LocalizedNames null `
 -ParameterIds null
```

- Convert the resource to JSON
```powershell
$ProductParameterModelsWriteProductParameterGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

