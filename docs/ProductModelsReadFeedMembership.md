# ProductModelsReadFeedMembership
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FeedId** | **Int32** | The feed id. | [optional] 
**AllowSale** | **Boolean** | True if the feed is allowed to display the sale price of the product. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadFeedMembership = Initialize-PSOpenAPIToolsProductModelsReadFeedMembership  -FeedId null `
 -AllowSale null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadFeedMembership | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

