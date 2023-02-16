# OrderFreightClass
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** |  | [optional] 
**Type** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**TypeAsEnum** | **Int32** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$OrderFreightClass = Initialize-PSOpenAPIToolsOrderFreightClass  -Id null `
 -Type null `
 -Name null `
 -TypeAsEnum null
```

- Convert the resource to JSON
```powershell
$OrderFreightClass | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

