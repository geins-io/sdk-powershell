#
# Geins Management API
#  Geins Management API is an RESTful api to power your applications who manages your geins services. Geins provides an easy-to-use and scalable solution for managing all aspects of an online store, from product listings and customer information to order processing and payment transactions.   :::tip With this API, you can build custom applications and integrate with third-party systems, dashboards and other bussiness logic apps. :::    ## Getting started Once you have created an account, you can start using the Management API by creating an `API key`. You can create as many API keys as you need. Each `API key` is connected to a specific account so you can keep track of operations and manage keys. You can find your `API key` in the `geins merchant center`.   ### Fast track Use one of our [SDKs](https://docs.geins.io/docs/sdk/introduction) to get started quickly. The SDKs are available for the most popular programming languages and frameworks.  Or, if you prefer to just take it for a test run:  [![Run in Postman](https://run.pstmn.io/button.svg)](https://god.gw.postman.com/run-collection/25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553?action=collection%2Ffork&collection-url=entityId%3D25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553%26entityType%3Dcollection%26workspaceId%3Da2a179ce-158e-46b0-8d06-e9640f45112c)  ### Authentication Two authentication methods are supported:   - `API Key`   - `Basic Auth` 
# Version: v1.7
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSOpenAPITools' -name 'OrderModelsOrder' {
    Context 'OrderModelsOrder' {
        It 'Initialize-OrderModelsOrder' {
            # a simple test to create an object
            #$NewObject = Initialize-OrderModelsOrder -Id "TEST_VALUE" -ExternalId "TEST_VALUE" -PersonalId "TEST_VALUE" -CustomerId "TEST_VALUE" -CustomerTypeId "TEST_VALUE" -CreatedAt "TEST_VALUE" -UpdatedAt "TEST_VALUE" -CompletedAt "TEST_VALUE" -Status "TEST_VALUE" -Currency "TEST_VALUE" -CurrencyRate "TEST_VALUE" -MarketId "TEST_VALUE" -MarketName "TEST_VALUE" -Language "TEST_VALUE" -OrderTotal "TEST_VALUE" -ExpectedSum "TEST_VALUE" -VATTotal "TEST_VALUE" -OrderValueIncVat "TEST_VALUE" -OrderValueExVat "TEST_VALUE" -ItemValueIncVat "TEST_VALUE" -ItemValueExVat "TEST_VALUE" -Discount "TEST_VALUE" -DiscountExVat "TEST_VALUE" -FromBalance "TEST_VALUE" -ShippingFee "TEST_VALUE" -ShippingFeeExVat "TEST_VALUE" -PaymentFee "TEST_VALUE" -PaymentFeeExVat "TEST_VALUE" -Message "TEST_VALUE" -OrderMessages "TEST_VALUE" -PaymentDetails "TEST_VALUE" -ShippingDetails "TEST_VALUE" -ShippingAddress "TEST_VALUE" -BillingAddress "TEST_VALUE" -Rows "TEST_VALUE" -Refunds "TEST_VALUE" -Ip "TEST_VALUE" -UserAgent "TEST_VALUE" -ServiceLocation "TEST_VALUE" -CampaignCode "TEST_VALUE" -CampaignCodeId "TEST_VALUE" -Percent "TEST_VALUE" -DesiredDeliveryDate "TEST_VALUE" -Gender "TEST_VALUE" -CartId "TEST_VALUE" -SessionId "TEST_VALUE" -ExternalOrderStatus "TEST_VALUE" -CampaignIds "TEST_VALUE" -CampaignNames "TEST_VALUE" -MetaData "TEST_VALUE" -PublicId "TEST_VALUE"
            #$NewObject | Should -BeOfType OrderModelsOrder
            #$NewObject.property | Should -Be 0
        }
    }
}
