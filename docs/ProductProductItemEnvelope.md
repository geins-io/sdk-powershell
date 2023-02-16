# ProductProductItemEnvelope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | A status message for the action taken. | [optional] [readonly] 
**Item** | [**ProductModelsReadProductItem**](ProductModelsReadProductItem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductProductItemEnvelope = Initialize-PSOpenAPIToolsProductProductItemEnvelope  -Message null `
 -Item null
```

- Convert the resource to JSON
```powershell
$ProductProductItemEnvelope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

