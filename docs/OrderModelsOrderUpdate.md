# OrderModelsOrderUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalId** | **String** | The unique external identifier for this order. | [optional] 
**ParcelNumber** | **String** | Parcel number (tracking number) | [optional] 
**ExternalOrderStatus** | **Int32** | The external order status | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderModelsOrderUpdate = Initialize-PSOpenAPIToolsOrderModelsOrderUpdate  -ExternalId null `
 -ParcelNumber null `
 -ExternalOrderStatus null
```

- Convert the resource to JSON
```powershell
$OrderModelsOrderUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

