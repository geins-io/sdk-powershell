# OrderModelsShippingDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Unique identifier for this shipping detail | [optional] 
**ShippingId** | **Int32** | Id of the sipping method | [optional] 
**Name** | **String** | Name of the shipping method | [optional] 
**ParcelNumber** | **String** | Parcel number (tracking number) | [optional] 
**ShippingDate** | **System.DateTime** | Shipping date | [optional] 
**TrackingUrl** | **String** | Tracking URL | [optional] 
**ExternalDeliveryOptionId** | **String** | Delivery option id of the external shipping provider | [optional] 
**ExternalServiceId** | **String** | Service id of the external shipping provider | [optional] 
**ExternalCarrierId** | **String** | Carrier id of the external shipping provider | [optional] 
**PickupPoint** | **String** | Pickup point | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderModelsShippingDetail = Initialize-PSOpenAPIToolsOrderModelsShippingDetail  -Id null `
 -ShippingId null `
 -Name null `
 -ParcelNumber null `
 -ShippingDate null `
 -TrackingUrl null `
 -ExternalDeliveryOptionId null `
 -ExternalServiceId null `
 -ExternalCarrierId null `
 -PickupPoint null
```

- Convert the resource to JSON
```powershell
$OrderModelsShippingDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

