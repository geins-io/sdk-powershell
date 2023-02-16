# PaymentModelsPaymentOptionQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SiteId** | **Int32** |  | [optional] 
**Email** | **String** | Customer email address | [optional] 
**CustomerTypeId** | **Int32** |  | [optional] 
**CountryId** | **Int32** |  | [optional] 
**Sum** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PaymentModelsPaymentOptionQuery = Initialize-PSOpenAPIToolsPaymentModelsPaymentOptionQuery  -SiteId null `
 -Email null `
 -CustomerTypeId null `
 -CountryId null `
 -Sum null
```

- Convert the resource to JSON
```powershell
$PaymentModelsPaymentOptionQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

