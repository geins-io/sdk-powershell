# OrderModelsAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Company** | **String** | Company name | [optional] 
**CareOf** | **String** | Care of. C/O | [optional] 
**State** | **String** | ISO code or name of the state, province or district | [optional] 
**Country** | **String** | ISO code of the country | [optional] 
**FirstName** | **String** | The first part(s) of the customer name | [optional] 
**LastName** | **String** | The last part(s), or family name of the customer | [optional] 
**Email** | **String** | The email of the customer | [optional] 
**AddressLine1** | **String** | The first line of the address, usually street and house number | [optional] 
**AddressLine2** | **String** | The second line of the address. | [optional] 
**AddressLine3** | **String** | The third line of the address. | [optional] 
**Zip** | **String** | The postal / zip code. | [optional] 
**City** | **String** | The city. | [optional] 
**Phone** | **String** | The (land-line) phone number of the customer | [optional] 
**Mobile** | **String** | The SMS-capable number of the customer | [optional] 
**EntryCode** | **String** | The delivery address entry code, if needed for successful delivery | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderModelsAddress = Initialize-PSOpenAPIToolsOrderModelsAddress  -Company null `
 -CareOf null `
 -State null `
 -Country null `
 -FirstName null `
 -LastName null `
 -Email null `
 -AddressLine1 null `
 -AddressLine2 null `
 -AddressLine3 null `
 -Zip null `
 -City null `
 -Phone null `
 -Mobile null `
 -EntryCode null
```

- Convert the resource to JSON
```powershell
$OrderModelsAddress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

