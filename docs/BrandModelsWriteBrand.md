# BrandModelsWriteBrand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of this brand. | [optional] 
**ExternalId** | **String** | External Id of the brand. | [optional] 
**Descriptions** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized descriptions of the brand. | [optional] 

## Examples

- Prepare the resource
```powershell
$BrandModelsWriteBrand = Initialize-PSOpenAPIToolsBrandModelsWriteBrand  -Name null `
 -ExternalId null `
 -Descriptions null
```

- Convert the resource to JSON
```powershell
$BrandModelsWriteBrand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

