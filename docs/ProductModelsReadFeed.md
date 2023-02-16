# ProductModelsReadFeed
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FeedId** | **Int32** | The feed id. | [optional] 
**Name** | **String** | The feed name. | [optional] 
**Url** | **String** | The url to the feed. | [optional] 
**Layout** | **String** | The name of the feed layout. | [optional] 
**Market** | **Int32** | The market of the feed. | [optional] 
**Language** | **String** | The language code of the feed. | [optional] 
**DefaultCurrency** | **String** | The default currency for the market | [optional] 
**DefaultCountry** | **String** | The default country for the market | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadFeed = Initialize-PSOpenAPIToolsProductModelsReadFeed  -FeedId null `
 -Name null `
 -Url null `
 -Layout null `
 -Market null `
 -Language null `
 -DefaultCurrency null `
 -DefaultCountry null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadFeed | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

