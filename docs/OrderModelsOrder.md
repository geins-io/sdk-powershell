# OrderModelsOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | The unique identifier for this order. | [optional] 
**ExternalId** | **String** | The unique external identifier for this order. | [optional] 
**PersonalId** | **String** | The social security number, or organisational number of the customer. | [optional] 
**CustomerId** | **Int32** | The unique identifier of the customer placing this order. | [optional] 
**CustomerTypeId** | **Int32** | Customer type. Usually 1 for private customers and 2 for companies. This field is customer specific | [optional] 
**CreatedAt** | **System.DateTime** | Datetime when the order was created. | [optional] 
**UpdatedAt** | **System.DateTime** | Datetime when the order was last updated. | [optional] 
**CompletedAt** | **System.DateTime** | The DateTime when the order was completed (delivered, payed). | [optional] 
**Status** | **String** | The order status. Possbile values: cancelled, on-hold, inactive, refunded, partial,  pending-payment, out-of-stock, backorder, completed, pending. | [optional] 
**Currency** | **String** | ISO Currency code. | [optional] 
**CurrencyRate** | **Double** | The Currency Rate to SEK. | [optional] 
**MarketId** | **Int32** | The unique identifier for the market this order originates from. | [optional] 
**MarketName** | **String** | The market name. Usually this is the equal to the site name. | [optional] 
**Language** | **String** | Two-letter Language code. | [optional] 
**OrderTotal** | **Double** | Order total. | [optional] 
**ExpectedSum** | **Double** | Expected total sum to be paid after discount and balance.   &lt;para&gt;The value is usually taken directly from the payment provider and represents the actual reserved amount.&lt;/para&gt;&lt;para&gt;If this differs from OrderTotal, actions should be taken to ensure they match. This usually happens due to rounding.&lt;/para&gt; | [optional] 
**VATTotal** | **Double** | Order VAT total. | [optional] 
**OrderValueIncVat** | **Double** | Order value inc vat after discount but before balance | [optional] 
**OrderValueExVat** | **Double** | Order value ex vat after discount but before balance | [optional] 
**ItemValueIncVat** | **Double** | Item value inc vat excluding fees and discount | [optional] 
**ItemValueExVat** | **Double** | Item value ex vat excluding fees and discount | [optional] 
**Discount** | **Double** | Total discount inc vat. | [optional] 
**DiscountExVat** | **Double** | Total discount ex vat. | [optional] 
**FromBalance** | **Double** | The amount which was withdrawn from the customers balance inc vat. | [optional] 
**ShippingFee** | **Double** | Shipping fee inc vat. | [optional] 
**ShippingFeeExVat** | **Double** | Shipping fee ex vat. | [optional] 
**PaymentFee** | **Double** | Payment fee inc vat. | [optional] 
**PaymentFeeExVat** | **Double** | Payment fee ex vat. | [optional] 
**Message** | **String** | Order message. Can contain instructions from customer or added details about the order. | [optional] 
**OrderMessages** | **String[]** | Internal order messages. Can contain internal details about the order. | [optional] 
**PaymentDetails** | [**OrderModelsPaymentDetail[]**](OrderModelsPaymentDetail.md) | List of payment details &lt;seealso cref&#x3D;&quot;&quot;T:Order.Models.PaymentDetail&quot;&quot; /&gt;. | [optional] 
**ShippingDetails** | [**OrderModelsShippingDetail[]**](OrderModelsShippingDetail.md) | List of shipping details &lt;seealso cref&#x3D;&quot;&quot;T:Order.Models.ShippingDetail&quot;&quot; /&gt;. | [optional] 
**ShippingAddress** | [**OrderModelsAddress**](OrderModelsAddress.md) |  | [optional] 
**BillingAddress** | [**OrderModelsAddress**](OrderModelsAddress.md) |  | [optional] 
**Rows** | [**OrderModelsOrderRow[]**](OrderModelsOrderRow.md) | List of order rows | [optional] 
**Refunds** | [**OrderModelsRefund[]**](OrderModelsRefund.md) | List of order refunds &lt;seealso cref&#x3D;&quot;&quot;T:Order.Models.Refund&quot;&quot; /&gt;. | [optional] 
**Ip** | **String** | Customer IP-number. | [optional] 
**UserAgent** | **String** | Customer User Agent. | [optional] 
**ServiceLocation** | **String** | Chosen service location. | [optional] 
**CampaignCode** | **String** | Campaign code applied to the order. | [optional] 
**CampaignCodeId** | **Int32** | The internal id of the applied campaign code. | [optional] 
**Percent** | **Int32** | General percent discount applied to the order. | [optional] 
**DesiredDeliveryDate** | **System.DateTime** | The desired delivery date of the order. | [optional] 
**Gender** | **Boolean** | The gender of the customer. True &#x3D; male, False &#x3D; female, null &#x3D; unknown. | [optional] 
**CartId** | **Int32** | The unique identifier for the cart from which this order originates. | [optional] 
**SessionId** | **String** | The session id for the from which this order originates. | [optional] 
**ExternalOrderStatus** | **Int32** |  | [optional] 
**CampaignIds** | **String[]** | The ids for the campaigns applied to this order (not rows) | [optional] 
**CampaignNames** | **String[]** | The names for the campaigns applied to this order (not rows) | [optional] 
**MetaData** | **System.Collections.Hashtable** | The order meta data to store additional information about the order. Eg. customer specific shipping data to include for nShift checkout (former UDC) shipments | [optional] 
**PublicId** | **String** | The public id of this order. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderModelsOrder = Initialize-PSOpenAPIToolsOrderModelsOrder  -Id null `
 -ExternalId null `
 -PersonalId null `
 -CustomerId null `
 -CustomerTypeId null `
 -CreatedAt null `
 -UpdatedAt null `
 -CompletedAt null `
 -Status null `
 -Currency null `
 -CurrencyRate null `
 -MarketId null `
 -MarketName null `
 -Language null `
 -OrderTotal null `
 -ExpectedSum null `
 -VATTotal null `
 -OrderValueIncVat null `
 -OrderValueExVat null `
 -ItemValueIncVat null `
 -ItemValueExVat null `
 -Discount null `
 -DiscountExVat null `
 -FromBalance null `
 -ShippingFee null `
 -ShippingFeeExVat null `
 -PaymentFee null `
 -PaymentFeeExVat null `
 -Message null `
 -OrderMessages null `
 -PaymentDetails null `
 -ShippingDetails null `
 -ShippingAddress null `
 -BillingAddress null `
 -Rows null `
 -Refunds null `
 -Ip null `
 -UserAgent null `
 -ServiceLocation null `
 -CampaignCode null `
 -CampaignCodeId null `
 -Percent null `
 -DesiredDeliveryDate null `
 -Gender null `
 -CartId null `
 -SessionId null `
 -ExternalOrderStatus null `
 -CampaignIds null `
 -CampaignNames null `
 -MetaData null `
 -PublicId 00000000-0000-0000-0000-000000000000
```

- Convert the resource to JSON
```powershell
$OrderModelsOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

