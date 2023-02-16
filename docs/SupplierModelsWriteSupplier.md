# SupplierModelsWriteSupplier
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the supplier. | [optional] 
**Address1** | **String** | The first address line of the supplier. | [optional] 
**Address2** | **String** | The second address line of the supplier. | [optional] 
**Address3** | **String** | The third address line of the supplier. | [optional] 
**ZipCode** | **String** | The zip code of the supplier. | [optional] 
**Country** | **String** | The country of the supplier. | [optional] 
**ContactPerson** | **String** | The contact person of the supplier. | [optional] 
**Phone1** | **String** | The primary phone number of the supplier. | [optional] 
**Phone2** | **String** | The secondary phone number of the supplier. | [optional] 
**Email** | **String** | The email address of the supplier. | [optional] 
**ExternalId** | **String** | External Id of the supplier. | [optional] 

## Examples

- Prepare the resource
```powershell
$SupplierModelsWriteSupplier = Initialize-PSOpenAPIToolsSupplierModelsWriteSupplier  -Name null `
 -Address1 null `
 -Address2 null `
 -Address3 null `
 -ZipCode null `
 -Country null `
 -ContactPerson null `
 -Phone1 null `
 -Phone2 null `
 -Email null `
 -ExternalId null
```

- Convert the resource to JSON
```powershell
$SupplierModelsWriteSupplier | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

