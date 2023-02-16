# ShippingModelsShippingQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SiteId** | **Int32** | The site ID the delivery options belong to. Required. | [optional] 
**CountryId** | **Int32** | The country ID where the order should be shipped to. | [optional] 
**ShippingId** | **Int32** | Carismar Shipping Option ID | [optional] 
**DeliveryOptionId** | **String** | Unifaun Delivery Option ID | [optional] 
**Order** | [**OrderCheckoutOrder**](OrderCheckoutOrder.md) |  | [optional] 
**MinimumFreeShippingLimit** | **Double** | The cart sum limit for free shipping - to be used for conditions in the delivery checkout portal | [optional] 

## Examples

- Prepare the resource
```powershell
$ShippingModelsShippingQuery = Initialize-PSOpenAPIToolsShippingModelsShippingQuery  -SiteId null `
 -CountryId null `
 -ShippingId null `
 -DeliveryOptionId 00000000-0000-0000-0000-000000000000 `
 -Order null `
 -MinimumFreeShippingLimit null
```

- Convert the resource to JSON
```powershell
$ShippingModelsShippingQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

