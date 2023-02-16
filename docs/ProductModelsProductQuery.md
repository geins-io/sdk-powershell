# ProductModelsProductQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UpdatedAfter** | **System.DateTime** | Limits query to products updated after the specified date. | [optional] 
**ProductIds** | **Int32[]** | Limits query to only include the supplied product ids. | [optional] 
**ArticleNumbers** | **String[]** | Limits query to only include products with supplied article numbers. | [optional] 
**OnlySellable** | **Boolean** | Limits query to only include products that are available for purchase | [optional] 
**FeedId** | **Int32** | Limits query to only include products contained in the specified feed. | [optional] 
**BatchId** | **String** | Used to fetch products where the result set is split into batches | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsProductQuery = Initialize-PSOpenAPIToolsProductModelsProductQuery  -UpdatedAfter null `
 -ProductIds null `
 -ArticleNumbers null `
 -OnlySellable null `
 -FeedId null `
 -BatchId 00000000-0000-0000-0000-000000000000
```

- Convert the resource to JSON
```powershell
$ProductModelsProductQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

