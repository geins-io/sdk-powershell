# PriceListModelsPriceList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Price list id. | [optional] 
**Name** | **String** | Price list name. | [optional] 
**MarketId** | **Int32** | Market id. | [optional] 
**MarketPrefix** | **String** | Market prefix.  &lt;example&gt;Eg: SE&lt;/example&gt; | [optional] 
**Currency** | **String** | Currency abbreviation.  &lt;example&gt;Eg: SEK&lt;/example&gt; | [optional] 

## Examples

- Prepare the resource
```powershell
$PriceListModelsPriceList = Initialize-PSOpenAPIToolsPriceListModelsPriceList  -Id null `
 -Name null `
 -MarketId null `
 -MarketPrefix null `
 -Currency null
```

- Convert the resource to JSON
```powershell
$PriceListModelsPriceList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

