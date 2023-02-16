# ProductParameterModelsWriteProductParameterPredefinedValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ParameterId** | **Int32** | The unique identifier for the parameter. | [optional] 
**PredefinedValueId** | **Int32** | The predefined value id of the parameter. | [optional] 
**Name** | **String** | The non-localized predefined value name of the parameter. | [optional] 
**LocalizedNames** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized predefined value names of the parameter. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductParameterModelsWriteProductParameterPredefinedValue = Initialize-PSOpenAPIToolsProductParameterModelsWriteProductParameterPredefinedValue  -ParameterId null `
 -PredefinedValueId null `
 -Name null `
 -LocalizedNames null
```

- Convert the resource to JSON
```powershell
$ProductParameterModelsWriteProductParameterPredefinedValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

