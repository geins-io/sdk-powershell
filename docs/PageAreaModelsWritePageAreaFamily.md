# PageAreaModelsWritePageAreaFamily
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**FilterableProperties** | **String[]** | This page area family has access to the following properties that can be used for filtering, when rendering itself.  &lt;para&gt;  The following properties are available:  SiteId,  LanguageId,  ProductId,  CategoryId,  BrandId,  InfoPageId,  DiscountCampaignNumber,  GenderId,  Sale,  UserTypeId  ActiveFrom,  ActiveTo  &lt;/para&gt; | [optional] 
**Areas** | [**PageAreaModelsWritePageArea[]**](PageAreaModelsWritePageArea.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageAreaModelsWritePageAreaFamily = Initialize-PSOpenAPIToolsPageAreaModelsWritePageAreaFamily  -Id null `
 -Name null `
 -FilterableProperties null `
 -Areas null
```

- Convert the resource to JSON
```powershell
$PageAreaModelsWritePageAreaFamily | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

