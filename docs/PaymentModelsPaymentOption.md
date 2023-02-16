# PaymentModelsPaymentOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentId** | **Int32** |  | [optional] 
**PaymentGroupId** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Fee** | **Double** |  | [optional] 
**Icon** | **String** |  | [optional] 
**Sort** | **Int32** |  | [optional] 
**Period** | **Int32** |  | [optional] 
**TermsLink** | **String** |  | [optional] 
**InfoLink** | **String** |  | [optional] 
**PersonalIdRequired** | **Boolean** |  | [optional] 
**RegisteredAddressRequired** | **Boolean** |  | [optional] 
**HouseNumberRequired** | **Boolean** |  | [optional] 
**HouseExtensionShown** | **Boolean** |  | [optional] 
**GenderRequired** | **Boolean** |  | [optional] 
**BirthdateRequired** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PaymentModelsPaymentOption = Initialize-PSOpenAPIToolsPaymentModelsPaymentOption  -PaymentId null `
 -PaymentGroupId null `
 -Name null `
 -DisplayName null `
 -Fee null `
 -Icon null `
 -Sort null `
 -Period null `
 -TermsLink null `
 -InfoLink null `
 -PersonalIdRequired null `
 -RegisteredAddressRequired null `
 -HouseNumberRequired null `
 -HouseExtensionShown null `
 -GenderRequired null `
 -BirthdateRequired null
```

- Convert the resource to JSON
```powershell
$PaymentModelsPaymentOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

