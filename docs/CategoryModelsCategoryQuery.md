# CategoryModelsCategoryQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAfter** | **System.DateTime** | Limits query to categories created after the specified date. | [optional] 
**CategoryIds** | **Int32[]** | Limits query to only include the supplied category ids. | [optional] 

## Examples

- Prepare the resource
```powershell
$CategoryModelsCategoryQuery = Initialize-PSOpenAPIToolsCategoryModelsCategoryQuery  -CreatedAfter null `
 -CategoryIds null
```

- Convert the resource to JSON
```powershell
$CategoryModelsCategoryQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

