# VariantModelsWriteVariant
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | The name of the variant, eg &quot;&quot;Color&quot;&quot;, &quot;&quot;Weight&quot;&quot; etc. | [optional] 
**Value** | **String** | The value of this variant, eg &quot;&quot;Blue&quot;&quot;, &quot;&quot;250g&quot;&quot; etc. | [optional] 

## Examples

- Prepare the resource
```powershell
$VariantModelsWriteVariant = Initialize-PSOpenAPIToolsVariantModelsWriteVariant  -Label null `
 -Value null
```

- Convert the resource to JSON
```powershell
$VariantModelsWriteVariant | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

