# ProductParameterModelsWriteProductParameterValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductId** | **Int32** | The product id of the parameter. | [optional] 
**ParameterId** | **Int32** | The unique identifier of the parameter that this value belongs to. | [optional] 
**Value** | **String** | The identifying value of the parameter. | [optional] 
**LocalizedDescriptions** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized descriptions of the parameter. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductParameterModelsWriteProductParameterValue = Initialize-PSOpenAPIToolsProductParameterModelsWriteProductParameterValue  -ProductId null `
 -ParameterId null `
 -Value null `
 -LocalizedDescriptions null
```

- Convert the resource to JSON
```powershell
$ProductParameterModelsWriteProductParameterValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

