# BrandModelsBrandQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAfter** | **System.DateTime** | Limits query to brands created after the specified date. | [optional] 
**BrandIds** | **Int32[]** | Limits query to only include the supplied brand ids. | [optional] 
**ExternalIds** | **String[]** | Limits query to externalIds | [optional] 

## Examples

- Prepare the resource
```powershell
$BrandModelsBrandQuery = Initialize-PSOpenAPIToolsBrandModelsBrandQuery  -CreatedAfter null `
 -BrandIds null `
 -ExternalIds null
```

- Convert the resource to JSON
```powershell
$BrandModelsBrandQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

