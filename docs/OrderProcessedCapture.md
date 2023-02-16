# OrderProcessedCapture
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CaptureId** | **String** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Reference** | **String** |  | [optional] 
**ProcessedOn** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderProcessedCapture = Initialize-PSOpenAPIToolsOrderProcessedCapture  -CaptureId 00000000-0000-0000-0000-000000000000 `
 -ExternalId null `
 -Reference null `
 -ProcessedOn null
```

- Convert the resource to JSON
```powershell
$OrderProcessedCapture | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

