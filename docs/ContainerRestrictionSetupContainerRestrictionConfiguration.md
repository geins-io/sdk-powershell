# ContainerRestrictionSetupContainerRestrictionConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedLayouts** | **Int32[]** |  | [optional] 
**BannedWidgets** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ContainerRestrictionSetupContainerRestrictionConfiguration = Initialize-PSOpenAPIToolsContainerRestrictionSetupContainerRestrictionConfiguration  -AllowedLayouts null `
 -BannedWidgets null
```

- Convert the resource to JSON
```powershell
$ContainerRestrictionSetupContainerRestrictionConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

