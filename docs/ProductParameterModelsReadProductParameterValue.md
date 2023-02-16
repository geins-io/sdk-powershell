# ProductParameterModelsReadProductParameterValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ParameterValueId** | **Int32** | The unique identifier of this parameter value. | [optional] 
**ProductId** | **Int32** | The product id of the parameter. | [optional] 
**ParameterId** | **Int32** | The unique identifier of the parameter that this value belongs to. | [optional] 
**ParameterName** | **String** | The non-localized name of the parameter. | [optional] 
**GroupId** | **Int32** | The unique identifier of the group that this parameter belongs to. | [optional] 
**GroupName** | **String** | The name of the group that this parameter belongs to. | [optional] 
**ParameterType** | **Int32** | The type of parameter. | [optional] 
**Value** | **String** | The identifying value of the parameter. | [optional] 
**Description** | **String** | The non-localized description of the parameter. | [optional] 
**LocalizedDescriptions** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized descriptions of the parameter. | [optional] 
**InternalIdentifier** | **String** | The internal identifier of the parameter. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductParameterModelsReadProductParameterValue = Initialize-PSOpenAPIToolsProductParameterModelsReadProductParameterValue  -ParameterValueId null `
 -ProductId null `
 -ParameterId null `
 -ParameterName null `
 -GroupId null `
 -GroupName null `
 -ParameterType null `
 -Value null `
 -Description null `
 -LocalizedDescriptions null `
 -InternalIdentifier null
```

- Convert the resource to JSON
```powershell
$ProductParameterModelsReadProductParameterValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

