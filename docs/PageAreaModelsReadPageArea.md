# PageAreaModelsReadPageArea
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Index** | **Int32** | The primary id of this page are family collection | [optional] 
**Name** | **String** | A descriptive, user-defined name for this page area family collection | [optional] 
**FamilyId** | **Int32** | The family this area belongs to. | [optional] 
**Settings** | **String** | The settings that determine how containers can be added to this area. | [optional] 
**Containers** | [**PageAreaModelsReadPageWidgetContainer[]**](PageAreaModelsReadPageWidgetContainer.md) | The containers in this area | [optional] 

## Examples

- Prepare the resource
```powershell
$PageAreaModelsReadPageArea = Initialize-PSOpenAPIToolsPageAreaModelsReadPageArea  -Index null `
 -Name null `
 -FamilyId null `
 -Settings null `
 -Containers null
```

- Convert the resource to JSON
```powershell
$PageAreaModelsReadPageArea | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

