# OrderCheckoutOrderRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sku** | **String** |  | [optional] 
**ProductId** | **Int32** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**DiscountRate** | **Double** |  | [optional] 
**CartRowId** | **Int32** |  | [optional] 
**ProductContainerBuildId** | **Int32** |  | [optional] 
**Message** | **String** |  | [optional] 
**ArticleNumber** | **String** |  | [optional] 
**Gtin** | **String** |  | [optional] 
**Brand** | **String** |  | [optional] 
**Categories** | **String[]** |  | [optional] 
**Name** | **String** |  | [optional] 
**Variant** | **String** |  | [optional] 
**Quantity** | **Int32** |  | [optional] 
**PriceIncVat** | **Double** |  | [optional] 
**PriceExVat** | **Double** |  | [optional] 
**ExpectedTotalPriceIncVat** | **Double** |  | [optional] 
**DiscountIncVat** | **Double** |  | [optional] 
**DiscountExVat** | **Double** |  | [optional] 
**ExpectedTotalDiscountIncVat** | **Double** |  | [optional] 
**ProductUrl** | **String** |  | [optional] 
**ImageUrl** | **String** |  | [optional] 
**Weight** | **Int32** |  | [optional] 
**Height** | **Int32** |  | [optional] 
**Width** | **Int32** |  | [optional] 
**Length** | **Int32** |  | [optional] 
**CampaignIds** | **String[]** |  | [optional] 
**CampaignGroupData** | **String** |  | [optional] 
**CampaignNames** | **String[]** |  | [optional] 
**ProductPriceCampaignId** | **Int32** |  | [optional] 
**ProductPriceListId** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderCheckoutOrderRow = Initialize-PSOpenAPIToolsOrderCheckoutOrderRow  -Sku null `
 -ProductId null `
 -ExternalId null `
 -DiscountRate null `
 -CartRowId null `
 -ProductContainerBuildId null `
 -Message null `
 -ArticleNumber null `
 -Gtin null `
 -Brand null `
 -Categories null `
 -Name null `
 -Variant null `
 -Quantity null `
 -PriceIncVat null `
 -PriceExVat null `
 -ExpectedTotalPriceIncVat null `
 -DiscountIncVat null `
 -DiscountExVat null `
 -ExpectedTotalDiscountIncVat null `
 -ProductUrl null `
 -ImageUrl null `
 -Weight null `
 -Height null `
 -Width null `
 -Length null `
 -CampaignIds null `
 -CampaignGroupData null `
 -CampaignNames null `
 -ProductPriceCampaignId null `
 -ProductPriceListId null
```

- Convert the resource to JSON
```powershell
$OrderCheckoutOrderRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

