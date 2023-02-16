# VariantModelsReadVariant
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductId** | **Int32** | The id of the product this variant information belongs to | [optional] 
**GroupId** | **Int32** | The id of the group this variant belongs to. | [optional] 
**Label** | **String** | The name of the variant information, eg &quot;&quot;Weight&quot;&quot;, &quot;&quot;Length&quot;&quot; etc | [optional] 
**Value** | **String** | The value of the variant information, eg &quot;&quot;250g&quot;&quot;, &quot;&quot;89cm&quot;&quot; etc | [optional] 

## Examples

- Prepare the resource
```powershell
$VariantModelsReadVariant = Initialize-PSOpenAPIToolsVariantModelsReadVariant  -ProductId null `
 -GroupId null `
 -Label null `
 -Value null
```

- Convert the resource to JSON
```powershell
$VariantModelsReadVariant | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

