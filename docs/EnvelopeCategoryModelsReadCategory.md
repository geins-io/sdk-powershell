# EnvelopeCategoryModelsReadCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | A status message for the action taken. | [optional] 
**Details** | **String[]** | Any validation messages for the data on the current action. | [optional] 
**Resource** | [**CategoryModelsReadCategory**](CategoryModelsReadCategory.md) |  | [optional] 
**PageResult** | [**PageResult**](PageResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvelopeCategoryModelsReadCategory = Initialize-PSOpenAPIToolsEnvelopeCategoryModelsReadCategory  -Message null `
 -Details null `
 -Resource null `
 -PageResult null
```

- Convert the resource to JSON
```powershell
$EnvelopeCategoryModelsReadCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

