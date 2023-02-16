#
# Geins Management API
#  Geins Management API is an RESTful api to power your applications who manages your geins services. Geins provides an easy-to-use and scalable solution for managing all aspects of an online store, from product listings and customer information to order processing and payment transactions.   :::tip With this API, you can build custom applications and integrate with third-party systems, dashboards and other bussiness logic apps. :::    ## Getting started Once you have created an account, you can start using the Management API by creating an `API key`. You can create as many API keys as you need. Each `API key` is connected to a specific account so you can keep track of operations and manage keys. You can find your `API key` in the `geins merchant center`.   ### Fast track Use one of our [SDKs](https://docs.geins.io/docs/sdk/introduction) to get started quickly. The SDKs are available for the most popular programming languages and frameworks.  Or, if you prefer to just take it for a test run:  [![Run in Postman](https://run.pstmn.io/button.svg)](https://god.gw.postman.com/run-collection/25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553?action=collection%2Ffork&collection-url=entityId%3D25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553%26entityType%3Dcollection%26workspaceId%3Da2a179ce-158e-46b0-8d06-e9640f45112c)  ### Authentication Two authentication methods are supported:   - `API Key`   - `Basic Auth` 
# Version: v1.7
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSOpenAPITools' -name 'OrderCheckoutOrder' {
    Context 'OrderCheckoutOrder' {
        It 'Initialize-OrderCheckoutOrder' {
            # a simple test to create an object
            #$NewObject = Initialize-OrderCheckoutOrder -OrderId "TEST_VALUE" -ExternalOrderId "TEST_VALUE" -CartId "TEST_VALUE" -SessionId "TEST_VALUE" -SiteId "TEST_VALUE" -Currency "TEST_VALUE" -Status "TEST_VALUE" -IpAddress "TEST_VALUE" -Message "TEST_VALUE" -InternalMessage "TEST_VALUE" -Locale "TEST_VALUE" -Rows "TEST_VALUE" -CampaignId "TEST_VALUE" -CampaignCode "TEST_VALUE" -CampaignName "TEST_VALUE" -CampaignIds "TEST_VALUE" -CampaignNames "TEST_VALUE" -CustomerId "TEST_VALUE" -CustomerTypeId "TEST_VALUE" -Gender "TEST_VALUE" -DateOfBirth "TEST_VALUE" -PersonalId "TEST_VALUE" -UserAgent "TEST_VALUE" -MetaData "TEST_VALUE" -PaymentId "TEST_VALUE" -TransactionId "TEST_VALUE" -SecondaryTransactionId "TEST_VALUE" -Country "TEST_VALUE" -Company "TEST_VALUE" -OrganizationNumber "TEST_VALUE" -FirstName "TEST_VALUE" -LastName "TEST_VALUE" -Email "TEST_VALUE" -Address1 "TEST_VALUE" -Address2 "TEST_VALUE" -Zip "TEST_VALUE" -City "TEST_VALUE" -Region "TEST_VALUE" -Phone "TEST_VALUE" -MobilePhone "TEST_VALUE" -CareOf "TEST_VALUE" -ShippingId "TEST_VALUE" -ShippingCountry "TEST_VALUE" -ShippingCompany "TEST_VALUE" -ShippingOrganizationNumber "TEST_VALUE" -ShippingFirstName "TEST_VALUE" -ShippingLastName "TEST_VALUE" -ShippingEmail "TEST_VALUE" -ShippingAddress1 "TEST_VALUE" -ShippingAddress2 "TEST_VALUE" -ShippingZip "TEST_VALUE" -ShippingCity "TEST_VALUE" -ShippingRegion "TEST_VALUE" -ShippingPhone "TEST_VALUE" -ShippingMobilePhone "TEST_VALUE" -ShippingCareOf "TEST_VALUE" -PickupPoint "TEST_VALUE" -DesiredDeliveryDate "TEST_VALUE" -FreightClass "TEST_VALUE" -Sum "TEST_VALUE" -ExpectedSum "TEST_VALUE" -OrderValueIncVat "TEST_VALUE" -OrderValueExVat "TEST_VALUE" -ItemValueIncVat "TEST_VALUE" -ItemValueExVat "TEST_VALUE" -DiscountIncVat "TEST_VALUE" -DiscountExVat "TEST_VALUE" -PercentDiscount "TEST_VALUE" -Balance "TEST_VALUE" -ShippingFeeIncVat "TEST_VALUE" -ShippingFeeExVat "TEST_VALUE" -PaymentFeeIncVat "TEST_VALUE" -PaymentFeeExVat "TEST_VALUE"
            #$NewObject | Should -BeOfType OrderCheckoutOrder
            #$NewObject.property | Should -Be 0
        }
    }
}