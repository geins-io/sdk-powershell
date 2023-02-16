# ShippingModelsParcelGroupOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderIds** | **Int32[]** | The order ids contained in this parcel group. | [optional] 
**MarkAsDelivered** | **Boolean** | Set to true to also automatically mark orders as delivered upon creation of the parcel group. | [optional] 
**SignalCapturesCreated** | **Boolean** | Set to true to also automatically signal capture events upon creation of the parcel group. | [optional] 

## Examples

- Prepare the resource
```powershell
$ShippingModelsParcelGroupOptions = Initialize-PSOpenAPIToolsShippingModelsParcelGroupOptions  -OrderIds null `
 -MarkAsDelivered null `
 -SignalCapturesCreated null
```

- Convert the resource to JSON
```powershell
$ShippingModelsParcelGroupOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

