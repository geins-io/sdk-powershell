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

.PARAMETER OrderId
No description available.
.PARAMETER UserId
No description available.
.PARAMETER Email
No description available.
.PARAMETER Phone
No description available.
.PARAMETER Currency
No description available.
.PARAMETER SumIncVat
No description available.
.PARAMETER BalanceIncVat
No description available.
.PARAMETER Items
No description available.
.OUTPUTS

OrderValidateOrderCreationRequest<PSCustomObject>
#>

function Initialize-OrderValidateOrderCreationRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${OrderId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${UserId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Currency},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${SumIncVat},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${BalanceIncVat},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OrderValidateOrderCreationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "OrderId" = ${OrderId}
            "UserId" = ${UserId}
            "Email" = ${Email}
            "Phone" = ${Phone}
            "Currency" = ${Currency}
            "SumIncVat" = ${SumIncVat}
            "BalanceIncVat" = ${BalanceIncVat}
            "Items" = ${Items}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrderValidateOrderCreationRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrderValidateOrderCreationRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrderValidateOrderCreationRequest<PSCustomObject>
#>
function ConvertFrom-JsonToOrderValidateOrderCreationRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OrderValidateOrderCreationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrderValidateOrderCreationRequest
        $AllProperties = ("OrderId", "UserId", "Email", "Phone", "Currency", "SumIncVat", "BalanceIncVat", "Items")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OrderId"))) { #optional property not found
            $OrderId = $null
        } else {
            $OrderId = $JsonParameters.PSobject.Properties["OrderId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["UserId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["Email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Phone"))) { #optional property not found
            $Phone = $null
        } else {
            $Phone = $JsonParameters.PSobject.Properties["Phone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Currency"))) { #optional property not found
            $Currency = $null
        } else {
            $Currency = $JsonParameters.PSobject.Properties["Currency"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SumIncVat"))) { #optional property not found
            $SumIncVat = $null
        } else {
            $SumIncVat = $JsonParameters.PSobject.Properties["SumIncVat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BalanceIncVat"))) { #optional property not found
            $BalanceIncVat = $null
        } else {
            $BalanceIncVat = $JsonParameters.PSobject.Properties["BalanceIncVat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["Items"].value
        }

        $PSO = [PSCustomObject]@{
            "OrderId" = ${OrderId}
            "UserId" = ${UserId}
            "Email" = ${Email}
            "Phone" = ${Phone}
            "Currency" = ${Currency}
            "SumIncVat" = ${SumIncVat}
            "BalanceIncVat" = ${BalanceIncVat}
            "Items" = ${Items}
        }

        return $PSO
    }

}

