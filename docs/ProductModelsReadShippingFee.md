# ProductModelsReadShippingFee
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Market** | **Int32** | The market that the shipping fee is applicable on. | [optional] 
**Country** | **String** | The country that the shipping fee is applicable in. | [optional] 
**Service** | **String** | The shipping service with the current fee. | [optional] 
**ServiceId** | **Int32** | The shipping service id with the current fee. | [optional] 
**Fee** | **Double** | The shipping fee. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadShippingFee = Initialize-PSOpenAPIToolsProductModelsReadShippingFee  -Market null `
 -Country null `
 -Service null `
 -ServiceId null `
 -Fee null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadShippingFee | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

