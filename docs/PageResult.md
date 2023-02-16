# PageResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BatchId** | **String** | The id of the batch operation. If this property has a value for the first fetched page it has to be passed as a parameter for all subsequent requests- | [optional] 
**Page** | **Int32** | The current page | [optional] 
**RowCount** | **Int32** | Total number of rows | [optional] 
**PageCount** | **Int32** | Total number of pages | [optional] 
**PageSize** | **Int32** | Page size | [optional] 
**HasMoreRows** | **Boolean** | True if there is more content to fetch. | [optional] 

## Examples

- Prepare the resource
```powershell
$PageResult = Initialize-PSOpenAPIToolsPageResult  -BatchId 00000000-0000-0000-0000-000000000000 `
 -Page null `
 -RowCount null `
 -PageCount null `
 -PageSize null `
 -HasMoreRows null
```

- Convert the resource to JSON
```powershell
$PageResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

