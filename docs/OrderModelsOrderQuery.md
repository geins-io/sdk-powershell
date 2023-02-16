# OrderModelsOrderQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Updated** | **System.DateTime** | Given a date, only orders updated after the provided date will be returned. | [optional] 
**StatusList** | **String** | Comma separated list of statuses to filter on. | [optional] 
**MarketId** | **Int32** | Id of a market. | [optional] 
**PaymentName** | **String** | Name of a payment method | [optional] 
**ParcelGroupId** | **Int32** | Id of a parcel group. | [optional] 
**CustomerId** | **Int32** | The ID of a customer | [optional] 
**Email** | **String** | The email of a customer | [optional] 
**Include** | **String** | Comma separated list of child-collections to also include in the query result. | [optional] 
**ExternalOrderStatus** | **Int32** | This status can be used by external systems to change the status of an order. Such as failed or done. | [optional] 
**CombineProductContainerRows** | **Boolean** | If true, will combine all order rows that are part of a container into a single container row. | [optional] 
**PackingLocationId** | **Int32** | The packing place to get orders from. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderModelsOrderQuery = Initialize-PSOpenAPIToolsOrderModelsOrderQuery  -Updated null `
 -StatusList null `
 -MarketId null `
 -PaymentName null `
 -ParcelGroupId null `
 -CustomerId null `
 -Email null `
 -Include null `
 -ExternalOrderStatus null `
 -CombineProductContainerRows null `
 -PackingLocationId null
```

- Convert the resource to JSON
```powershell
$OrderModelsOrderQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

