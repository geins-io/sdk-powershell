# OrderRefundRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderRowId** | **Int32** |  | [optional] 
**ItemId** | **Int32** |  | [optional] 
**ProductId** | **Int32** |  | [optional] 
**Price** | **Double** |  | [optional] 
**PriceExVat** | **Double** |  | [optional] 
**Name** | **String** |  | [optional] 
**ProductName** | **String** |  | [optional] 
**Variant** | **String** |  | [optional] 
**Brand** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderRefundRow = Initialize-PSOpenAPIToolsOrderRefundRow  -OrderRowId null `
 -ItemId null `
 -ProductId null `
 -Price null `
 -PriceExVat null `
 -Name null `
 -ProductName null `
 -Variant null `
 -Brand null
```

- Convert the resource to JSON
```powershell
$OrderRefundRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

