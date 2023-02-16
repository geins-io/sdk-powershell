# APIOrderTransactionData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderId** | **Int32** |  | [optional] 
**TransactionId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$APIOrderTransactionData = Initialize-PSOpenAPIToolsAPIOrderTransactionData  -OrderId null `
 -TransactionId null
```

- Convert the resource to JSON
```powershell
$APIOrderTransactionData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

