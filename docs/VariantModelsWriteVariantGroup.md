# VariantModelsWriteVariantGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The optional internal name of the variant group. | [optional] 
**CollapseInLists** | **Boolean** | A setting to control the display behaviour in product listings of variants belonging to this group. | [optional] 
**VariantLabels** | **String[]** | The labels of the variant data that this group keeps track of | [optional] 
**Products** | [**ProductModelsWriteProduct[]**](ProductModelsWriteProduct.md) | Products to be created and connected to the group. | [optional] 

## Examples

- Prepare the resource
```powershell
$VariantModelsWriteVariantGroup = Initialize-PSOpenAPIToolsVariantModelsWriteVariantGroup  -Name null `
 -CollapseInLists null `
 -VariantLabels null `
 -Products null
```

- Convert the resource to JSON
```powershell
$VariantModelsWriteVariantGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

