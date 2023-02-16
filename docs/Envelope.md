# Envelope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | A status message for the action taken. | [optional] 
**Details** | **String[]** | Any validation messages for the data on the current action. | [optional] 
**Resource** | [**SystemCollectionsHashtable**](.md) | The resource on which the action was taken. | [optional] 
**PageResult** | [**PageResult**](PageResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Envelope = Initialize-PSOpenAPIToolsEnvelope  -Message null `
 -Details null `
 -Resource null `
 -PageResult null
```

- Convert the resource to JSON
```powershell
$Envelope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

