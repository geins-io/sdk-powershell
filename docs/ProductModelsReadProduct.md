# ProductModelsReadProduct
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductId** | **Int32** | The unique identifier for the product. | [optional] 
**ArticleNumber** | **String** | The article number of the product. | [optional] 
**Names** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | The localized names of the product. | [optional] 
**DateCreated** | **System.DateTime** | The date the product was created. | [optional] 
**DateUpdated** | **System.DateTime** | The date the product was last updated. | [optional] 
**Active** | **Boolean** | The current state of the product. | [optional] 
**PurchasePrice** | **Double** | The purchase price in the currency defined in {Product.Models.Read.Product.PurchasePriceCurrency}. | [optional] 
**PurchasePriceCurrency** | **String** | The 3-letter ISO 4217 currency code for the amount given in {Product.Models.Read.Product.PurchasePrice}. | [optional] 
**ShortTexts** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | Localized short texts for the product. | [optional] 
**LongTexts** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | Localized long texts for the product. | [optional] 
**TechTexts** | [**SharedModelsLocalizableContent[]**](SharedModelsLocalizableContent.md) | Localized tech texts for the product. | [optional] 
**Items** | [**ProductModelsReadProductItem[]**](ProductModelsReadProductItem.md) | The items belonging to the product. | [optional] 
**Prices** | [**PriceListModelsReadPriceListPrice[]**](PriceListModelsReadPriceListPrice.md) | The current prices of the product. | [optional] 
**Categories** | [**CategoryModelsReadCategory[]**](CategoryModelsReadCategory.md) | The categories the product belongs to. | [optional] 
**Images** | [**ProductModelsReadImage[]**](ProductModelsReadImage.md) | The images for the product | [optional] 
**BrandId** | **Int32** | The brand id of the product. | [optional] 
**BrandName** | **String** | The brand name of the product. | [optional] 
**SupplierId** | **Int32** | The supplier id of the product. | [optional] 
**SupplierName** | **String** | The supplier name of the product. | [optional] 
**ParameterValues** | [**ProductParameterModelsReadProductParameterValue[]**](ProductParameterModelsReadProductParameterValue.md) | The parameter values associated with the product. | [optional] 
**Variants** | [**VariantModelsReadVariant[]**](VariantModelsReadVariant.md) | The variants for this product. | [optional] 
**Markets** | [**MarketModelsMarket[]**](MarketModelsMarket.md) | The markets for this product | [optional] 
**Vat** | **Double** | The vat percent for this product. Eg) 0.25 meaning 25% VAT. | [optional] 
**PrimaryImage** | **String** | The filename of this products primary image. | [optional] 
**FreightClassId** | **Int32** | ID of freight class | [optional] 
**IntrastatCode** | **String** | Intrastat code of the product | [optional] 
**CountryOfOrigin** | **String** | Country of orgin of product | [optional] 
**VariantGroupId** | **Int32** | ID of Variant Group to which the product is associated | [optional] 
**VatId** | **Int32** | ID of Vat | [optional] 
**ExternalId** | **String** | External Id of the product. | [optional] 
**ActivationDate** | **System.DateTime** | Activation date for the product. | [optional] 
**Feeds** | [**ProductModelsReadFeedMembership[]**](ProductModelsReadFeedMembership.md) | The feeds the product is a member of | [optional] 
**Urls** | [**ProductModelsReadProductUrl[]**](ProductModelsReadProductUrl.md) | All canonical urls for the product | [optional] 
**MainCategoryId** | **Int32** | The main category id for the product. | [optional] 
**RelatedProducts** | [**ProductModelsReadRelatedProduct[]**](ProductModelsReadRelatedProduct.md) | The related products for the product. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductModelsReadProduct = Initialize-PSOpenAPIToolsProductModelsReadProduct  -ProductId null `
 -ArticleNumber null `
 -Names null `
 -DateCreated null `
 -DateUpdated null `
 -Active null `
 -PurchasePrice null `
 -PurchasePriceCurrency null `
 -ShortTexts null `
 -LongTexts null `
 -TechTexts null `
 -Items null `
 -Prices null `
 -Categories null `
 -Images null `
 -BrandId null `
 -BrandName null `
 -SupplierId null `
 -SupplierName null `
 -ParameterValues null `
 -Variants null `
 -Markets null `
 -Vat null `
 -PrimaryImage null `
 -FreightClassId null `
 -IntrastatCode null `
 -CountryOfOrigin null `
 -VariantGroupId null `
 -VatId null `
 -ExternalId null `
 -ActivationDate null `
 -Feeds null `
 -Urls null `
 -MainCategoryId null `
 -RelatedProducts null
```

- Convert the resource to JSON
```powershell
$ProductModelsReadProduct | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

