# SupplierModelsSupplierQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NameContains** | **String** | Limits query to suppliers with a name containing the specified string. | [optional] 
**ExternalIds** | **String[]** | Limits query to externalIds | [optional] 

## Examples

- Prepare the resource
```powershell
$SupplierModelsSupplierQuery = Initialize-PSOpenAPIToolsSupplierModelsSupplierQuery  -NameContains null `
 -ExternalIds null
```

- Convert the resource to JSON
```powershell
$SupplierModelsSupplierQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

