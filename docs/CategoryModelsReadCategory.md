# CategoryModelsReadCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CategoryId** | **Int32** | The unique identifier for the category. | [optional] 
**ParentCategoryId** | **Int32** | The unique identifier for the parent category. | [optional] 
**Names** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localizable names of the category. | [optional] 
**Descriptions** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized descriptions of the category. | [optional] 
**GoogleCategoryPath** | **String** | The Google Taxonomy category path for the category, if any. | [optional] 

## Examples

- Prepare the resource
```powershell
$CategoryModelsReadCategory = Initialize-PSOpenAPIToolsCategoryModelsReadCategory  -CategoryId null `
 -ParentCategoryId null `
 -Names null `
 -Descriptions null `
 -GoogleCategoryPath null
```

- Convert the resource to JSON
```powershell
$CategoryModelsReadCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

