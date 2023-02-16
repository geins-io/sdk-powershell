# OrderCheckoutOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderId** | **String** |  | [optional] 
**ExternalOrderId** | **String** |  | [optional] 
**CartId** | **String** |  | [optional] 
**SessionId** | **String** |  | [optional] 
**SiteId** | **Int32** |  | [optional] 
**Currency** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**InternalMessage** | **String** |  | [optional] 
**Locale** | **String** |  | [optional] 
**Rows** | [**OrderCheckoutOrderRow[]**](OrderCheckoutOrderRow.md) |  | [optional] 
**CampaignId** | **Int32** |  | [optional] 
**CampaignCode** | **String** |  | [optional] 
**CampaignName** | **String** |  | [optional] 
**CampaignIds** | **String[]** |  | [optional] 
**CampaignNames** | **String[]** |  | [optional] 
**CustomerId** | **Int32** |  | [optional] 
**CustomerTypeId** | **Int32** |  | [optional] 
**Gender** | **Int32** |  | [optional] 
**DateOfBirth** | **System.DateTime** |  | [optional] 
**PersonalId** | **String** |  | [optional] 
**UserAgent** | **String** |  | [optional] 
**MetaData** | **System.Collections.Hashtable** |  | [optional] 
**PaymentId** | **Int32** |  | [optional] 
**TransactionId** | **String** |  | [optional] 
**SecondaryTransactionId** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**OrganizationNumber** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**Address1** | **String** |  | [optional] 
**Address2** | **String** |  | [optional] 
**Zip** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**Region** | **String** |  | [optional] 
**Phone** | **String** |  | [optional] 
**MobilePhone** | **String** |  | [optional] 
**CareOf** | **String** |  | [optional] 
**ShippingId** | **Int32** |  | [optional] 
**ShippingCountry** | **String** |  | [optional] 
**ShippingCompany** | **String** |  | [optional] 
**ShippingOrganizationNumber** | **String** |  | [optional] 
**ShippingFirstName** | **String** |  | [optional] 
**ShippingLastName** | **String** |  | [optional] 
**ShippingEmail** | **String** |  | [optional] 
**ShippingAddress1** | **String** |  | [optional] 
**ShippingAddress2** | **String** |  | [optional] 
**ShippingZip** | **String** |  | [optional] 
**ShippingCity** | **String** |  | [optional] 
**ShippingRegion** | **String** |  | [optional] 
**ShippingPhone** | **String** |  | [optional] 
**ShippingMobilePhone** | **String** |  | [optional] 
**ShippingCareOf** | **String** |  | [optional] 
**PickupPoint** | **String** |  | [optional] 
**DesiredDeliveryDate** | **System.DateTime** |  | [optional] 
**FreightClass** | [**OrderFreightClass**](OrderFreightClass.md) |  | [optional] 
**Sum** | **Double** |  | [optional] [readonly] 
**ExpectedSum** | **Double** |  | [optional] 
**OrderValueIncVat** | **Double** |  | [optional] [readonly] 
**OrderValueExVat** | **Double** |  | [optional] [readonly] 
**ItemValueIncVat** | **Double** |  | [optional] [readonly] 
**ItemValueExVat** | **Double** |  | [optional] [readonly] 
**DiscountIncVat** | **Double** |  | [optional] 
**DiscountExVat** | **Double** |  | [optional] 
**PercentDiscount** | **Int32** |  | [optional] 
**Balance** | **Double** |  | [optional] 
**ShippingFeeIncVat** | **Double** |  | [optional] 
**ShippingFeeExVat** | **Double** |  | [optional] 
**PaymentFeeIncVat** | **Double** |  | [optional] 
**PaymentFeeExVat** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderCheckoutOrder = Initialize-PSOpenAPIToolsOrderCheckoutOrder  -OrderId null `
 -ExternalOrderId null `
 -CartId null `
 -SessionId null `
 -SiteId null `
 -Currency null `
 -Status null `
 -IpAddress null `
 -Message null `
 -InternalMessage null `
 -Locale null `
 -Rows null `
 -CampaignId null `
 -CampaignCode null `
 -CampaignName null `
 -CampaignIds null `
 -CampaignNames null `
 -CustomerId null `
 -CustomerTypeId null `
 -Gender null `
 -DateOfBirth null `
 -PersonalId null `
 -UserAgent null `
 -MetaData null `
 -PaymentId null `
 -TransactionId null `
 -SecondaryTransactionId null `
 -Country null `
 -Company null `
 -OrganizationNumber null `
 -FirstName null `
 -LastName null `
 -Email null `
 -Address1 null `
 -Address2 null `
 -Zip null `
 -City null `
 -Region null `
 -Phone null `
 -MobilePhone null `
 -CareOf null `
 -ShippingId null `
 -ShippingCountry null `
 -ShippingCompany null `
 -ShippingOrganizationNumber null `
 -ShippingFirstName null `
 -ShippingLastName null `
 -ShippingEmail null `
 -ShippingAddress1 null `
 -ShippingAddress2 null `
 -ShippingZip null `
 -ShippingCity null `
 -ShippingRegion null `
 -ShippingPhone null `
 -ShippingMobilePhone null `
 -ShippingCareOf null `
 -PickupPoint null `
 -DesiredDeliveryDate null `
 -FreightClass null `
 -Sum null `
 -ExpectedSum null `
 -OrderValueIncVat null `
 -OrderValueExVat null `
 -ItemValueIncVat null `
 -ItemValueExVat null `
 -DiscountIncVat null `
 -DiscountExVat null `
 -PercentDiscount null `
 -Balance null `
 -ShippingFeeIncVat null `
 -ShippingFeeExVat null `
 -PaymentFeeIncVat null `
 -PaymentFeeExVat null
```

- Convert the resource to JSON
```powershell
$OrderCheckoutOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

