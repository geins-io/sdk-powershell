# CategoryModelsWriteCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ParentCategoryId** | **Int32** | The unique identifier of the parent category of this category. | [optional] 
**Names** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localizable names of the category. | [optional] 
**Descriptions** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized descriptions of the category. | [optional] 

## Examples

- Prepare the resource
```powershell
$CategoryModelsWriteCategory = Initialize-PSOpenAPIToolsCategoryModelsWriteCategory  -ParentCategoryId null `
 -Names null `
 -Descriptions null
```

- Convert the resource to JSON
```powershell
$CategoryModelsWriteCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

