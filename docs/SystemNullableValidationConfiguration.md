# SystemNullableValidationConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LazyLoadConfiguration** | [**PageWidgetLazyLoadSetupLazyLoadConfiguration**](PageWidgetLazyLoadSetupLazyLoadConfiguration.md) |  | [optional] 
**LazyLoadCollectionConfigurations** | [**PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration[]**](PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration.md) |  | [optional] 
**WidgetRestrictions** | [**System.Collections.Hashtable**](WidgetRestrictionSetupWidgetRestrictionConfiguration.md) |  | [optional] 
**ContainerRestrictions** | [**ContainerRestrictionSetupContainerRestrictionConfiguration**](ContainerRestrictionSetupContainerRestrictionConfiguration.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemNullableValidationConfiguration = Initialize-PSOpenAPIToolsSystemNullableValidationConfiguration  -LazyLoadConfiguration null `
 -LazyLoadCollectionConfigurations null `
 -WidgetRestrictions null `
 -ContainerRestrictions null
```

- Convert the resource to JSON
```powershell
$SystemNullableValidationConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

