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

Data carrier for a refund

.PARAMETER Id
Unique identifier for this refund
.PARAMETER OrderRowId
Reference to the order row that has been refunded
.PARAMETER PaymentDetailId
Reference to the payment detail that has been refunded
.PARAMETER ReturnId
Id number of the return. Can be used to group refunds.
.PARAMETER ArticleNumber
Article number. If the refund is not bound to an order row this field contains an optional refund article number.
.PARAMETER CreatedAt
Datetime when the refund was created
.PARAMETER Total
Total amount refunded
.PARAMETER ReasonCode
Reason code for the refund
.PARAMETER Reason
Reason for refund
.PARAMETER ToBalance
Shows if the refund was deposited to the customers balance
.PARAMETER Vat
Vat percent in decimals for the refunded amount
.PARAMETER ItemId
Item ID (SKU).
.PARAMETER RefundType
Refund Type
.OUTPUTS

OrderModelsRefund<PSCustomObject>
#>

function Initialize-OrderModelsRefund {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${OrderRowId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PaymentDetailId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ReturnId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ArticleNumber},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Total},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ReasonCode},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ToBalance},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Vat},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ItemId},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RefundType}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OrderModelsRefund' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "Id" = ${Id}
            "OrderRowId" = ${OrderRowId}
            "PaymentDetailId" = ${PaymentDetailId}
            "ReturnId" = ${ReturnId}
            "ArticleNumber" = ${ArticleNumber}
            "CreatedAt" = ${CreatedAt}
            "Total" = ${Total}
            "ReasonCode" = ${ReasonCode}
            "Reason" = ${Reason}
            "ToBalance" = ${ToBalance}
            "Vat" = ${Vat}
            "ItemId" = ${ItemId}
            "RefundType" = ${RefundType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrderModelsRefund<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrderModelsRefund<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrderModelsRefund<PSCustomObject>
#>
function ConvertFrom-JsonToOrderModelsRefund {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OrderModelsRefund' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrderModelsRefund
        $AllProperties = ("Id", "OrderRowId", "PaymentDetailId", "ReturnId", "ArticleNumber", "CreatedAt", "Total", "ReasonCode", "Reason", "ToBalance", "Vat", "ItemId", "RefundType")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OrderRowId"))) { #optional property not found
            $OrderRowId = $null
        } else {
            $OrderRowId = $JsonParameters.PSobject.Properties["OrderRowId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PaymentDetailId"))) { #optional property not found
            $PaymentDetailId = $null
        } else {
            $PaymentDetailId = $JsonParameters.PSobject.Properties["PaymentDetailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReturnId"))) { #optional property not found
            $ReturnId = $null
        } else {
            $ReturnId = $JsonParameters.PSobject.Properties["ReturnId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArticleNumber"))) { #optional property not found
            $ArticleNumber = $null
        } else {
            $ArticleNumber = $JsonParameters.PSobject.Properties["ArticleNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreatedAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["CreatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["Total"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReasonCode"))) { #optional property not found
            $ReasonCode = $null
        } else {
            $ReasonCode = $JsonParameters.PSobject.Properties["ReasonCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Reason"))) { #optional property not found
            $Reason = $null
        } else {
            $Reason = $JsonParameters.PSobject.Properties["Reason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ToBalance"))) { #optional property not found
            $ToBalance = $null
        } else {
            $ToBalance = $JsonParameters.PSobject.Properties["ToBalance"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vat"))) { #optional property not found
            $Vat = $null
        } else {
            $Vat = $JsonParameters.PSobject.Properties["Vat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ItemId"))) { #optional property not found
            $ItemId = $null
        } else {
            $ItemId = $JsonParameters.PSobject.Properties["ItemId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RefundType"))) { #optional property not found
            $RefundType = $null
        } else {
            $RefundType = $JsonParameters.PSobject.Properties["RefundType"].value
        }

        $PSO = [PSCustomObject]@{
            "Id" = ${Id}
            "OrderRowId" = ${OrderRowId}
            "PaymentDetailId" = ${PaymentDetailId}
            "ReturnId" = ${ReturnId}
            "ArticleNumber" = ${ArticleNumber}
            "CreatedAt" = ${CreatedAt}
            "Total" = ${Total}
            "ReasonCode" = ${ReasonCode}
            "Reason" = ${Reason}
            "ToBalance" = ${ToBalance}
            "Vat" = ${Vat}
            "ItemId" = ${ItemId}
            "RefundType" = ${RefundType}
        }

        return $PSO
    }

}

