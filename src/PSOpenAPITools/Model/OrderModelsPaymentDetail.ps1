#
# Geins Management API
#  Geins Management API is an RESTful api to power your applications who manages your geins services. Geins provides an easy-to-use and scalable solution for managing all aspects of an online store, from product listings and customer information to order processing and payment transactions.   :::tip With this API, you can build custom applications and integrate with third-party systems, dashboards and other bussiness logic apps. :::    ## Getting started Once you have created an account, you can start using the Management API by creating an `API key`. You can create as many API keys as you need. Each `API key` is connected to a specific account so you can keep track of operations and manage keys. You can find your `API key` in the `geins merchant center`.   ### Fast track Use one of our [SDKs](https://docs.geins.io/docs/sdk/introduction) to get started quickly. The SDKs are available for the most popular programming languages and frameworks.  Or, if you prefer to just take it for a test run:  [![Run in Postman](https://run.pstmn.io/button.svg)](https://god.gw.postman.com/run-collection/25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553?action=collection%2Ffork&collection-url=entityId%3D25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553%26entityType%3Dcollection%26workspaceId%3Da2a179ce-158e-46b0-8d06-e9640f45112c)  ### Authentication Two authentication methods are supported:   - `API Key`   - `Basic Auth` 
# Version: v1.7
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Data carrier for a payment detail

.PARAMETER Id
Unique identifier for this payment detail. Exception: For some payment options this field can be 0. These orders only have one payment detail.
.PARAMETER PaymentId
Payment method id
.PARAMETER Name
The name of the payment method
.PARAMETER DisplayName
The display name of the payment method
.PARAMETER TransactionId
The transaction id (external reference).
.PARAMETER SecondaryTransactionId
The secondary transaction id, if any (external reference).
.PARAMETER ReservationNumber
The reservation number. This field is not available for all payment methods.
.PARAMETER ReservationDate
Reservation date
.PARAMETER PaymentDate
Payment date
.PARAMETER Total
Total
.PARAMETER Payed
Shows if the order is paid using this payment method
.PARAMETER PaymentFee
The payment fee
.PARAMETER ShippingFee
The shipping fee
.PARAMETER PaymentOption
The name of the payment option, if any.  This doesn't have to be the same as the payment name. Eg ""Direct bank payment"", ""Card"", ""Invoice"" etc.
.OUTPUTS

OrderModelsPaymentDetail<PSCustomObject>
#>

function Initialize-OrderModelsPaymentDetail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PaymentId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TransactionId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecondaryTransactionId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReservationNumber},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ReservationDate},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${PaymentDate},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Total},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Payed},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${PaymentFee},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${ShippingFee},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PaymentOption}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OrderModelsPaymentDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "Id" = ${Id}
            "PaymentId" = ${PaymentId}
            "Name" = ${Name}
            "DisplayName" = ${DisplayName}
            "TransactionId" = ${TransactionId}
            "SecondaryTransactionId" = ${SecondaryTransactionId}
            "ReservationNumber" = ${ReservationNumber}
            "ReservationDate" = ${ReservationDate}
            "PaymentDate" = ${PaymentDate}
            "Total" = ${Total}
            "Payed" = ${Payed}
            "PaymentFee" = ${PaymentFee}
            "ShippingFee" = ${ShippingFee}
            "PaymentOption" = ${PaymentOption}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrderModelsPaymentDetail<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrderModelsPaymentDetail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrderModelsPaymentDetail<PSCustomObject>
#>
function ConvertFrom-JsonToOrderModelsPaymentDetail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OrderModelsPaymentDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrderModelsPaymentDetail
        $AllProperties = ("Id", "PaymentId", "Name", "DisplayName", "TransactionId", "SecondaryTransactionId", "ReservationNumber", "ReservationDate", "PaymentDate", "Total", "Payed", "PaymentFee", "ShippingFee", "PaymentOption")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["Id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PaymentId"))) { #optional property not found
            $PaymentId = $null
        } else {
            $PaymentId = $JsonParameters.PSobject.Properties["PaymentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["DisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TransactionId"))) { #optional property not found
            $TransactionId = $null
        } else {
            $TransactionId = $JsonParameters.PSobject.Properties["TransactionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SecondaryTransactionId"))) { #optional property not found
            $SecondaryTransactionId = $null
        } else {
            $SecondaryTransactionId = $JsonParameters.PSobject.Properties["SecondaryTransactionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReservationNumber"))) { #optional property not found
            $ReservationNumber = $null
        } else {
            $ReservationNumber = $JsonParameters.PSobject.Properties["ReservationNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReservationDate"))) { #optional property not found
            $ReservationDate = $null
        } else {
            $ReservationDate = $JsonParameters.PSobject.Properties["ReservationDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PaymentDate"))) { #optional property not found
            $PaymentDate = $null
        } else {
            $PaymentDate = $JsonParameters.PSobject.Properties["PaymentDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["Total"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Payed"))) { #optional property not found
            $Payed = $null
        } else {
            $Payed = $JsonParameters.PSobject.Properties["Payed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PaymentFee"))) { #optional property not found
            $PaymentFee = $null
        } else {
            $PaymentFee = $JsonParameters.PSobject.Properties["PaymentFee"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ShippingFee"))) { #optional property not found
            $ShippingFee = $null
        } else {
            $ShippingFee = $JsonParameters.PSobject.Properties["ShippingFee"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PaymentOption"))) { #optional property not found
            $PaymentOption = $null
        } else {
            $PaymentOption = $JsonParameters.PSobject.Properties["PaymentOption"].value
        }

        $PSO = [PSCustomObject]@{
            "Id" = ${Id}
            "PaymentId" = ${PaymentId}
            "Name" = ${Name}
            "DisplayName" = ${DisplayName}
            "TransactionId" = ${TransactionId}
            "SecondaryTransactionId" = ${SecondaryTransactionId}
            "ReservationNumber" = ${ReservationNumber}
            "ReservationDate" = ${ReservationDate}
            "PaymentDate" = ${PaymentDate}
            "Total" = ${Total}
            "Payed" = ${Payed}
            "PaymentFee" = ${PaymentFee}
            "ShippingFee" = ${ShippingFee}
            "PaymentOption" = ${PaymentOption}
        }

        return $PSO
    }

}
