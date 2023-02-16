# PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CollectionName** | **String** |  | [optional] 
**EnableLazyloadMobile** | **Boolean** |  | [optional] 
**EagerLoadStepsMobile** | **Int32** |  | [optional] 
**EnableLazyloadDesktop** | **Boolean** |  | [optional] 
**EagerLoadStepsDesktop** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration = Initialize-PSOpenAPIToolsPageWidgetLazyLoadSetupLazyLoadCollectionConfiguration  -CollectionName null `
 -EnableLazyloadMobile null `
 -EagerLoadStepsMobile null `
 -EnableLazyloadDesktop null `
 -EagerLoadStepsDesktop null
```

- Convert the resource to JSON
```powershell
$PageWidgetLazyLoadSetupLazyLoadCollectionConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

