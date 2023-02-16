# VariantModelsReadVariantGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupId** | **Int32** | The id of variant goup. | [optional] 
**Name** | **String** | The optional internal name of the variant group. | [optional] 
**CollapseInLists** | **Boolean** | Determine visibility of non-main products of this group in lists. | [optional] 
**MainProductId** | **Int32** | The main product of this group. If the group is collapsed in lists, this will be the only visible product. | [optional] 
**ProductIds** | **Int32[]** | The product ids of the variants that belong to this group. | [optional] 
**Products** | [**ProductModelsReadProduct[]**](ProductModelsReadProduct.md) | Products belonging to the Variant group. Only included when parameter &quot;&quot;include&quot;&quot; is supplied in the query string | [optional] 

## Examples

- Prepare the resource
```powershell
$VariantModelsReadVariantGroup = Initialize-PSOpenAPIToolsVariantModelsReadVariantGroup  -GroupId null `
 -Name null `
 -CollapseInLists null `
 -MainProductId null `
 -ProductIds null `
 -Products null
```

- Convert the resource to JSON
```powershell
$VariantModelsReadVariantGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

