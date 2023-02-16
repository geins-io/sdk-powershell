# ProductModelsWriteProduct
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ArticleNumber** | **String** | The article number of the product. | [optional] 
**Names** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized names of the product. | [optional] 
**Active** | **Boolean** | The current state of the product. | [optional] 
**PurchasePrice** | **Double** | The purchase price in the currency defined in {Product.Models.Write.Product.PurchasePriceCurrency}. | [optional] 
**PurchasePriceCurrency** | **String** | The 3-letter ISO 4217 currency code for the amount given in {Product.Models.Write.Product.PurchasePrice}. | [optional] 
**ShortTexts** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | Localized short texts for the product. | [optional] 
**LongTexts** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | Localized long texts for the product. | [optional] 
**TechTexts** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | Localized tech texts for the product. | [optional] 
**BrandId** | **Int32** | The brand of the product. | [optional] 
**SupplierId** | **Int32** | The supplier id of the product. | [optional] 
**Items** | [**ProductModelsWriteProductItem[]**](ProductModelsWriteProductItem.md) | The items belonging to the product. | [optional] 
**CategoryIds** | **Int32[]** | The category ids the product belongs to. | [optional] 
**ParameterValues** | [**ProductParameterModelsWriteProductParameterValue[]**](ProductParameterModelsWriteProductParameterValue.md) | The parameter values associated with the product. | [optional] 
**Variants** | [**VariantModelsWriteVariant[]**](VariantModelsWriteVariant.md) | The variants for this product. | [optional] 
**Markets** | [**MarketModelsMarket[]**](MarketModelsMarket.md) | The markets for this product | [optional] 
**FreightClassId** | **Int32** | ID of freight class | [optional] 
**IntrastatCode** | **String** | Intrastat code of the product | [optional] 
**CountryOfOrigin** | **String** | Country of orgin of product | [optional] 
**VariantGroupId** | **Int32** | ID of Variant Group to whom the product should be associated | [optional] 
**Vat** | **Int32** | ID or rate of VAT (On create and if no VAT is provided then default VAT will be used) | [optional] 
**VatType** | **String** | Defines how VAT parameter should be interpreted  Actual &#x3D; VAT parameter is interpreted as VAT rate  VatId &#x3D; VAT parameter is interpreted as VAT Id | [optional] 
**ExternalId** | **String** | External Id of the product. | [optional] 
**ActivationDate** | **System.DateTime** | Activation date for the product. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsWriteProduct = Initialize-PSOpenAPIToolsProductModelsWriteProduct  -ArticleNumber null `
 -Names null `
 -Active null `
 -PurchasePrice null `
 -PurchasePriceCurrency null `
 -ShortTexts null `
 -LongTexts null `
 -TechTexts null `
 -BrandId null `
 -SupplierId null `
 -Items null `
 -CategoryIds null `
 -ParameterValues null `
 -Variants null `
 -Markets null `
 -FreightClassId null `
 -IntrastatCode null `
 -CountryOfOrigin null `
 -VariantGroupId null `
 -Vat null `
 -VatType null `
 -ExternalId null `
 -ActivationDate null
```

- Convert the resource to JSON
```powershell
$ProductModelsWriteProduct | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

