# MarketModelsMarket
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Currency** | **String** |  | [optional] 
**VatRate** | **Double** |  | [optional] 
**MarketPrefix** | **String** |  | [optional] 
**CountryId** | **Int32** |  | [optional] 
**CurrencyId** | **Int32** |  | [optional] 
**CurrencyRate** | **Double** |  | [optional] 
**LanguageId** | **Int32** |  | [optional] 
**Language** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MarketModelsMarket = Initialize-PSOpenAPIToolsMarketModelsMarket  -Id null `
 -Name null `
 -DisplayName null `
 -Currency null `
 -VatRate null `
 -MarketPrefix null `
 -CountryId null `
 -CurrencyId null `
 -CurrencyRate null `
 -LanguageId null `
 -Language null
```

- Convert the resource to JSON
```powershell
$MarketModelsMarket | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

