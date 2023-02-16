#
# Geins Management API
#  Geins Management API is an RESTful api to power your applications who manages your geins services. Geins provides an easy-to-use and scalable solution for managing all aspects of an online store, from product listings and customer information to order processing and payment transactions.   :::tip With this API, you can build custom applications and integrate with third-party systems, dashboards and other bussiness logic apps. :::    ## Getting started Once you have created an account, you can start using the Management API by creating an `API key`. You can create as many API keys as you need. Each `API key` is connected to a specific account so you can keep track of operations and manage keys. You can find your `API key` in the `geins merchant center`.   ### Fast track Use one of our [SDKs](https://docs.geins.io/docs/sdk/introduction) to get started quickly. The SDKs are available for the most popular programming languages and frameworks.  Or, if you prefer to just take it for a test run:  [![Run in Postman](https://run.pstmn.io/button.svg)](https://god.gw.postman.com/run-collection/25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553?action=collection%2Ffork&collection-url=entityId%3D25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553%26entityType%3Dcollection%26workspaceId%3Da2a179ce-158e-46b0-8d06-e9640f45112c)  ### Authentication Two authentication methods are supported:   - `API Key`   - `Basic Auth` 
# Version: v1.7
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSOpenAPITools' -name 'OrderApi' {
    Context 'Add-CommentToOrder' {
        It 'Test Add-CommentToOrder' {
            #$TestResult = Add-CommentToOrder -Id "TEST_VALUE" -OrderComment "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-Order' {
        It 'Test New-Order' {
            #$TestResult = New-Order -Order "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-OrderId' {
        It 'Test New-OrderId' {
            #$TestResult = New-OrderId
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DeleteOrder' {
        It 'Test Invoke-DeleteOrder' {
            #$TestResult = Invoke-DeleteOrder -Id "TEST_VALUE" -Operation "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-CaptureById' {
        It 'Test Get-CaptureById' {
            #$TestResult = Get-CaptureById -CaptureId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OrderById' {
        It 'Test Get-OrderById' {
            #$TestResult = Get-OrderById -Id "TEST_VALUE" -Include "TEST_VALUE" -CombineProductContainerRows "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OrderStatuses' {
        It 'Test Get-OrderStatuses' {
            #$TestResult = Get-OrderStatuses
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-RefundById' {
        It 'Test Get-RefundById' {
            #$TestResult = Get-RefundById -RefundId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-PartialUpdateOfOrder' {
        It 'Test Invoke-PartialUpdateOfOrder' {
            #$TestResult = Invoke-PartialUpdateOfOrder -Id "TEST_VALUE" -Order "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-QueryOrders' {
        It 'Test Invoke-QueryOrders' {
            #$TestResult = Invoke-QueryOrders -Query "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Set-CaptureAsProcessed' {
        It 'Test Set-CaptureAsProcessed' {
            #$TestResult = Set-CaptureAsProcessed -ProcessedCapture "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Set-PaymentAsPayed' {
        It 'Test Set-PaymentAsPayed' {
            #$TestResult = Set-PaymentAsPayed -PaymentDetailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Set-RefundAsProcessed' {
        It 'Test Set-RefundAsProcessed' {
            #$TestResult = Set-RefundAsProcessed -ProcessedRefund "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-OrderStatus' {
        It 'Test Update-OrderStatus' {
            #$TestResult = Update-OrderStatus -Id "TEST_VALUE" -Status "TEST_VALUE" -TransactionId "TEST_VALUE" -SecondaryTransactionId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-TransactionData' {
        It 'Test Update-TransactionData' {
            #$TestResult = Update-TransactionData -Id "TEST_VALUE" -TransactionData "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Confirm-Order' {
        It 'Test Confirm-Order' {
            #$TestResult = Confirm-Order -Request "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}
