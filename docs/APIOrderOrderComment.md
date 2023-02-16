# APIOrderOrderComment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderId** | **Int32** |  | [optional] 
**Comment** | **String** |  | [optional] 
**System** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$APIOrderOrderComment = Initialize-PSOpenAPIToolsAPIOrderOrderComment  -OrderId null `
 -Comment null `
 -System null
```

- Convert the resource to JSON
```powershell
$APIOrderOrderComment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

