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

Data carrier for a shipping detail

.PARAMETER Id
Unique identifier for this shipping detail
.PARAMETER ShippingId
Id of the sipping method
.PARAMETER Name
Name of the shipping method
.PARAMETER ParcelNumber
Parcel number (tracking number)
.PARAMETER ShippingDate
Shipping date
.PARAMETER TrackingUrl
Tracking URL
.PARAMETER ExternalDeliveryOptionId
Delivery option id of the external shipping provider
.PARAMETER ExternalServiceId
Service id of the external shipping provider
.PARAMETER ExternalCarrierId
Carrier id of the external shipping provider
.PARAMETER PickupPoint
Pickup point
.OUTPUTS

OrderModelsShippingDetail<PSCustomObject>
#>

function Initialize-OrderModelsShippingDetail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ShippingId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParcelNumber},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ShippingDate},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingUrl},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalDeliveryOptionId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalServiceId},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalCarrierId},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PickupPoint}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OrderModelsShippingDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "Id" = ${Id}
            "ShippingId" = ${ShippingId}
            "Name" = ${Name}
            "ParcelNumber" = ${ParcelNumber}
            "ShippingDate" = ${ShippingDate}
            "TrackingUrl" = ${TrackingUrl}
            "ExternalDeliveryOptionId" = ${ExternalDeliveryOptionId}
            "ExternalServiceId" = ${ExternalServiceId}
            "ExternalCarrierId" = ${ExternalCarrierId}
            "PickupPoint" = ${PickupPoint}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrderModelsShippingDetail<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrderModelsShippingDetail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrderModelsShippingDetail<PSCustomObject>
#>
function ConvertFrom-JsonToOrderModelsShippingDetail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OrderModelsShippingDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrderModelsShippingDetail
        $AllProperties = ("Id", "ShippingId", "Name", "ParcelNumber", "ShippingDate", "TrackingUrl", "ExternalDeliveryOptionId", "ExternalServiceId", "ExternalCarrierId", "PickupPoint")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ShippingId"))) { #optional property not found
            $ShippingId = $null
        } else {
            $ShippingId = $JsonParameters.PSobject.Properties["ShippingId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ParcelNumber"))) { #optional property not found
            $ParcelNumber = $null
        } else {
            $ParcelNumber = $JsonParameters.PSobject.Properties["ParcelNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ShippingDate"))) { #optional property not found
            $ShippingDate = $null
        } else {
            $ShippingDate = $JsonParameters.PSobject.Properties["ShippingDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TrackingUrl"))) { #optional property not found
            $TrackingUrl = $null
        } else {
            $TrackingUrl = $JsonParameters.PSobject.Properties["TrackingUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalDeliveryOptionId"))) { #optional property not found
            $ExternalDeliveryOptionId = $null
        } else {
            $ExternalDeliveryOptionId = $JsonParameters.PSobject.Properties["ExternalDeliveryOptionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalServiceId"))) { #optional property not found
            $ExternalServiceId = $null
        } else {
            $ExternalServiceId = $JsonParameters.PSobject.Properties["ExternalServiceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalCarrierId"))) { #optional property not found
            $ExternalCarrierId = $null
        } else {
            $ExternalCarrierId = $JsonParameters.PSobject.Properties["ExternalCarrierId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PickupPoint"))) { #optional property not found
            $PickupPoint = $null
        } else {
            $PickupPoint = $JsonParameters.PSobject.Properties["PickupPoint"].value
        }

        $PSO = [PSCustomObject]@{
            "Id" = ${Id}
            "ShippingId" = ${ShippingId}
            "Name" = ${Name}
            "ParcelNumber" = ${ParcelNumber}
            "ShippingDate" = ${ShippingDate}
            "TrackingUrl" = ${TrackingUrl}
            "ExternalDeliveryOptionId" = ${ExternalDeliveryOptionId}
            "ExternalServiceId" = ${ExternalServiceId}
            "ExternalCarrierId" = ${ExternalCarrierId}
            "PickupPoint" = ${PickupPoint}
        }

        return $PSO
    }

}

