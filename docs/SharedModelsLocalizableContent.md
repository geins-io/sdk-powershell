# SharedModelsLocalizableContent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LanguageCode** | **String** | The 2-letter ISO 639-1 language code for this locale. | [optional] 
**Content** | **String** | The localized content. | [optional] 

## Examples

- Prepare the resource
```powershell
$SharedModelsLocalizableContent = Initialize-PSOpenAPIToolsSharedModelsLocalizableContent  -LanguageCode null `
 -Content null
```

- Convert the resource to JSON
```powershell
$SharedModelsLocalizableContent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

