# ShippingModelsShippingOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Fee** | **Double** |  | [optional] 
**Logo** | **String** |  | [optional] 
**ShippingData** | **String** |  | [optional] 
**Options** | [**ShippingModelsShippingSubOption[]**](ShippingModelsShippingSubOption.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ShippingModelsShippingOption = Initialize-PSOpenAPIToolsShippingModelsShippingOption  -Id null `
 -ExternalId null `
 -Name null `
 -Fee null `
 -Logo null `
 -ShippingData null `
 -Options null
```

- Convert the resource to JSON
```powershell
$ShippingModelsShippingOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

