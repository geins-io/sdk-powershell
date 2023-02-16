# PageAreaModelsReadPageWidgetContainer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | The primary ID of this container | [optional] 
**Name** | **String** | The descriptive user defined name of this container, which is used to distinguish this container in a container library | [optional] 
**ClassNames** | **String[]** | The CSS class names this container should use. | [optional] 
**Active** | **Boolean** |  | [optional] 
**Layout** | **String** |  | [optional] 
**ResponsiveMode** | **String** |  | [optional] 
**Visibility** | **String** |  | [optional] 
**Design** | **String** |  | [optional] 
**Widgets** | [**PageAreaModelsReadPageWidget[]**](PageAreaModelsReadPageWidget.md) | The configured widgets held by this container | [optional] 

## Examples

- Prepare the resource
```powershell
$PageAreaModelsReadPageWidgetContainer = Initialize-PSOpenAPIToolsPageAreaModelsReadPageWidgetContainer  -Id null `
 -Name null `
 -ClassNames null `
 -Active null `
 -Layout null `
 -ResponsiveMode null `
 -Visibility null `
 -Design null `
 -Widgets null
```

- Convert the resource to JSON
```powershell
$PageAreaModelsReadPageWidgetContainer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

