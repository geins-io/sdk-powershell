# PageAreaModelsWritePageArea
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Index** | **Int32** | The primary id of this page are family collection | [optional] 
**Name** | **String** | A descriptive, user-defined name for this page area family collection | [optional] 
**FamilyId** | **Int32** | The family this area belongs to. | [optional] 
**Settings** | [**SystemNullableValidationConfiguration**](SystemNullableValidationConfiguration.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageAreaModelsWritePageArea = Initialize-PSOpenAPIToolsPageAreaModelsWritePageArea  -Index null `
 -Name null `
 -FamilyId null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$PageAreaModelsWritePageArea | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

