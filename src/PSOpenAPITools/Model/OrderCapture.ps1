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

No description available.

.PARAMETER CaptureId
No description available.
.PARAMETER OrderPaymentId
No description available.
.PARAMETER OrderId
No description available.
.PARAMETER ExternalOrderId
No description available.
.PARAMETER ExternalId
No description available.
.PARAMETER Reference
No description available.
.PARAMETER Description
No description available.
.PARAMETER ProcessedOn
No description available.
.PARAMETER CapturedItemTotal
No description available.
.PARAMETER CapturedShippingFee
No description available.
.PARAMETER CapturedPaymentFee
No description available.
.PARAMETER CapturedDiscount
No description available.
.PARAMETER CapturedBalance
No description available.
.PARAMETER VatRate
No description available.
.PARAMETER TrackingNumber
No description available.
.PARAMETER ShippingName
No description available.
.PARAMETER TrackingUri
No description available.
.PARAMETER ShippingMethod
No description available.
.PARAMETER PaymentName
No description available.
.PARAMETER Locale
No description available.
.PARAMETER Rows
No description available.
.PARAMETER OrderTransactionId
No description available.
.PARAMETER SecondaryOrderTransactionId
No description available.
.OUTPUTS

OrderCapture<PSCustomObject>
#>

function Initialize-OrderCapture {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CaptureId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OrderPaymentId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${OrderId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalOrderId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reference},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ProcessedOn},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${CapturedItemTotal},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${CapturedShippingFee},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${CapturedPaymentFee},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${CapturedDiscount},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${CapturedBalance},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${VatRate},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingNumber},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ShippingName},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingUri},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ShippingMethod},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PaymentName},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Rows},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OrderTransactionId},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecondaryOrderTransactionId}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OrderCapture' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "CaptureId" = ${CaptureId}
            "OrderPaymentId" = ${OrderPaymentId}
            "OrderId" = ${OrderId}
            "ExternalOrderId" = ${ExternalOrderId}
            "ExternalId" = ${ExternalId}
            "Reference" = ${Reference}
            "Description" = ${Description}
            "ProcessedOn" = ${ProcessedOn}
            "CapturedItemTotal" = ${CapturedItemTotal}
            "CapturedShippingFee" = ${CapturedShippingFee}
            "CapturedPaymentFee" = ${CapturedPaymentFee}
            "CapturedDiscount" = ${CapturedDiscount}
            "CapturedBalance" = ${CapturedBalance}
            "VatRate" = ${VatRate}
            "TrackingNumber" = ${TrackingNumber}
            "ShippingName" = ${ShippingName}
            "TrackingUri" = ${TrackingUri}
            "ShippingMethod" = ${ShippingMethod}
            "PaymentName" = ${PaymentName}
            "Locale" = ${Locale}
            "Rows" = ${Rows}
            "OrderTransactionId" = ${OrderTransactionId}
            "SecondaryOrderTransactionId" = ${SecondaryOrderTransactionId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrderCapture<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrderCapture<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrderCapture<PSCustomObject>
#>
function ConvertFrom-JsonToOrderCapture {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OrderCapture' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrderCapture
        $AllProperties = ("CaptureId", "OrderPaymentId", "OrderId", "ExternalOrderId", "ExternalId", "Reference", "Description", "ProcessedOn", "CapturedItemTotal", "CapturedShippingFee", "CapturedPaymentFee", "CapturedDiscount", "CapturedBalance", "VatRate", "TrackingNumber", "ShippingName", "TrackingUri", "ShippingMethod", "PaymentName", "Locale", "Rows", "OrderTransactionId", "SecondaryOrderTransactionId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CaptureId"))) { #optional property not found
            $CaptureId = $null
        } else {
            $CaptureId = $JsonParameters.PSobject.Properties["CaptureId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OrderPaymentId"))) { #optional property not found
            $OrderPaymentId = $null
        } else {
            $OrderPaymentId = $JsonParameters.PSobject.Properties["OrderPaymentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OrderId"))) { #optional property not found
            $OrderId = $null
        } else {
            $OrderId = $JsonParameters.PSobject.Properties["OrderId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalOrderId"))) { #optional property not found
            $ExternalOrderId = $null
        } else {
            $ExternalOrderId = $JsonParameters.PSobject.Properties["ExternalOrderId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalId"))) { #optional property not found
            $ExternalId = $null
        } else {
            $ExternalId = $JsonParameters.PSobject.Properties["ExternalId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Reference"))) { #optional property not found
            $Reference = $null
        } else {
            $Reference = $JsonParameters.PSobject.Properties["Reference"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProcessedOn"))) { #optional property not found
            $ProcessedOn = $null
        } else {
            $ProcessedOn = $JsonParameters.PSobject.Properties["ProcessedOn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CapturedItemTotal"))) { #optional property not found
            $CapturedItemTotal = $null
        } else {
            $CapturedItemTotal = $JsonParameters.PSobject.Properties["CapturedItemTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CapturedShippingFee"))) { #optional property not found
            $CapturedShippingFee = $null
        } else {
            $CapturedShippingFee = $JsonParameters.PSobject.Properties["CapturedShippingFee"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CapturedPaymentFee"))) { #optional property not found
            $CapturedPaymentFee = $null
        } else {
            $CapturedPaymentFee = $JsonParameters.PSobject.Properties["CapturedPaymentFee"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CapturedDiscount"))) { #optional property not found
            $CapturedDiscount = $null
        } else {
            $CapturedDiscount = $JsonParameters.PSobject.Properties["CapturedDiscount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CapturedBalance"))) { #optional property not found
            $CapturedBalance = $null
        } else {
            $CapturedBalance = $JsonParameters.PSobject.Properties["CapturedBalance"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VatRate"))) { #optional property not found
            $VatRate = $null
        } else {
            $VatRate = $JsonParameters.PSobject.Properties["VatRate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TrackingNumber"))) { #optional property not found
            $TrackingNumber = $null
        } else {
            $TrackingNumber = $JsonParameters.PSobject.Properties["TrackingNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ShippingName"))) { #optional property not found
            $ShippingName = $null
        } else {
            $ShippingName = $JsonParameters.PSobject.Properties["ShippingName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TrackingUri"))) { #optional property not found
            $TrackingUri = $null
        } else {
            $TrackingUri = $JsonParameters.PSobject.Properties["TrackingUri"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ShippingMethod"))) { #optional property not found
            $ShippingMethod = $null
        } else {
            $ShippingMethod = $JsonParameters.PSobject.Properties["ShippingMethod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PaymentName"))) { #optional property not found
            $PaymentName = $null
        } else {
            $PaymentName = $JsonParameters.PSobject.Properties["PaymentName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["Locale"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Rows"))) { #optional property not found
            $Rows = $null
        } else {
            $Rows = $JsonParameters.PSobject.Properties["Rows"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OrderTransactionId"))) { #optional property not found
            $OrderTransactionId = $null
        } else {
            $OrderTransactionId = $JsonParameters.PSobject.Properties["OrderTransactionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SecondaryOrderTransactionId"))) { #optional property not found
            $SecondaryOrderTransactionId = $null
        } else {
            $SecondaryOrderTransactionId = $JsonParameters.PSobject.Properties["SecondaryOrderTransactionId"].value
        }

        $PSO = [PSCustomObject]@{
            "CaptureId" = ${CaptureId}
            "OrderPaymentId" = ${OrderPaymentId}
            "OrderId" = ${OrderId}
            "ExternalOrderId" = ${ExternalOrderId}
            "ExternalId" = ${ExternalId}
            "Reference" = ${Reference}
            "Description" = ${Description}
            "ProcessedOn" = ${ProcessedOn}
            "CapturedItemTotal" = ${CapturedItemTotal}
            "CapturedShippingFee" = ${CapturedShippingFee}
            "CapturedPaymentFee" = ${CapturedPaymentFee}
            "CapturedDiscount" = ${CapturedDiscount}
            "CapturedBalance" = ${CapturedBalance}
            "VatRate" = ${VatRate}
            "TrackingNumber" = ${TrackingNumber}
            "ShippingName" = ${ShippingName}
            "TrackingUri" = ${TrackingUri}
            "ShippingMethod" = ${ShippingMethod}
            "PaymentName" = ${PaymentName}
            "Locale" = ${Locale}
            "Rows" = ${Rows}
            "OrderTransactionId" = ${OrderTransactionId}
            "SecondaryOrderTransactionId" = ${SecondaryOrderTransactionId}
        }

        return $PSO
    }

}

