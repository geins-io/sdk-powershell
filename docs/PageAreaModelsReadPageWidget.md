# PageAreaModelsReadPageWidget
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The IDs of widgets are immutable (determined by each view model implementation, in the namespace Carismar.Core) | [optional] 
**Name** | **String** | The static name of this widget. Used to translate into icons, or to append to css-classes. | [optional] 
**Type** | **String** | The name of the widget-type | [optional] 
**Active** | **Boolean** | Decides if this {PageArea.Models.Read.PageWidget} is active or not | [optional] 
**ClassNames** | **String[]** | Holds all CSS Class names that this widget should render | [optional] 
**Size** | **String** | The fractional size for this widget in it&#39;s container. | [optional] 
**Configuration** | **String** | The configuration for this {PageArea.Models.Read.PageWidget} | [optional] 

## Examples

- Prepare the resource
```powershell
$PageAreaModelsReadPageWidget = Initialize-PSOpenAPIToolsPageAreaModelsReadPageWidget  -Id 00000000-0000-0000-0000-000000000000 `
 -Name null `
 -Type null `
 -Active null `
 -ClassNames null `
 -Size null `
 -Configuration null
```

- Convert the resource to JSON
```powershell
$PageAreaModelsReadPageWidget | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

