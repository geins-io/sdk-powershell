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

.PARAMETER Sku
No description available.
.PARAMETER ProductId
No description available.
.PARAMETER ExternalId
No description available.
.PARAMETER DiscountRate
No description available.
.PARAMETER CartRowId
No description available.
.PARAMETER ProductContainerBuildId
No description available.
.PARAMETER Message
No description available.
.PARAMETER ArticleNumber
No description available.
.PARAMETER Gtin
No description available.
.PARAMETER Brand
No description available.
.PARAMETER Categories
No description available.
.PARAMETER Name
No description available.
.PARAMETER Variant
No description available.
.PARAMETER Quantity
No description available.
.PARAMETER PriceIncVat
No description available.
.PARAMETER PriceExVat
No description available.
.PARAMETER ExpectedTotalPriceIncVat
No description available.
.PARAMETER DiscountIncVat
No description available.
.PARAMETER DiscountExVat
No description available.
.PARAMETER ExpectedTotalDiscountIncVat
No description available.
.PARAMETER ProductUrl
No description available.
.PARAMETER ImageUrl
No description available.
.PARAMETER Weight
No description available.
.PARAMETER Height
No description available.
.PARAMETER Width
No description available.
.PARAMETER Length
No description available.
.PARAMETER CampaignIds
No description available.
.PARAMETER CampaignGroupData
No description available.
.PARAMETER CampaignNames
No description available.
.PARAMETER ProductPriceCampaignId
No description available.
.PARAMETER ProductPriceListId
No description available.
.OUTPUTS

OrderCheckoutOrderRow<PSCustomObject>
#>

function Initialize-OrderCheckoutOrderRow {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Sku},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ProductId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${DiscountRate},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${CartRowId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ProductContainerBuildId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ArticleNumber},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Gtin},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Brand},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Categories},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Variant},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Quantity},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${PriceIncVat},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${PriceExVat},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${ExpectedTotalPriceIncVat},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${DiscountIncVat},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${DiscountExVat},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${ExpectedTotalDiscountIncVat},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductUrl},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImageUrl},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Weight},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Height},
        [Parameter(Position = 24, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Width},
        [Parameter(Position = 25, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Length},
        [Parameter(Position = 26, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${CampaignIds},
        [Parameter(Position = 27, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CampaignGroupData},
        [Parameter(Position = 28, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${CampaignNames},
        [Parameter(Position = 29, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ProductPriceCampaignId},
        [Parameter(Position = 30, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ProductPriceListId}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OrderCheckoutOrderRow' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "Sku" = ${Sku}
            "ProductId" = ${ProductId}
            "ExternalId" = ${ExternalId}
            "DiscountRate" = ${DiscountRate}
            "CartRowId" = ${CartRowId}
            "ProductContainerBuildId" = ${ProductContainerBuildId}
            "Message" = ${Message}
            "ArticleNumber" = ${ArticleNumber}
            "Gtin" = ${Gtin}
            "Brand" = ${Brand}
            "Categories" = ${Categories}
            "Name" = ${Name}
            "Variant" = ${Variant}
            "Quantity" = ${Quantity}
            "PriceIncVat" = ${PriceIncVat}
            "PriceExVat" = ${PriceExVat}
            "ExpectedTotalPriceIncVat" = ${ExpectedTotalPriceIncVat}
            "DiscountIncVat" = ${DiscountIncVat}
            "DiscountExVat" = ${DiscountExVat}
            "ExpectedTotalDiscountIncVat" = ${ExpectedTotalDiscountIncVat}
            "ProductUrl" = ${ProductUrl}
            "ImageUrl" = ${ImageUrl}
            "Weight" = ${Weight}
            "Height" = ${Height}
            "Width" = ${Width}
            "Length" = ${Length}
            "CampaignIds" = ${CampaignIds}
            "CampaignGroupData" = ${CampaignGroupData}
            "CampaignNames" = ${CampaignNames}
            "ProductPriceCampaignId" = ${ProductPriceCampaignId}
            "ProductPriceListId" = ${ProductPriceListId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrderCheckoutOrderRow<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrderCheckoutOrderRow<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrderCheckoutOrderRow<PSCustomObject>
#>
function ConvertFrom-JsonToOrderCheckoutOrderRow {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OrderCheckoutOrderRow' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrderCheckoutOrderRow
        $AllProperties = ("Sku", "ProductId", "ExternalId", "DiscountRate", "CartRowId", "ProductContainerBuildId", "Message", "ArticleNumber", "Gtin", "Brand", "Categories", "Name", "Variant", "Quantity", "PriceIncVat", "PriceExVat", "ExpectedTotalPriceIncVat", "DiscountIncVat", "DiscountExVat", "ExpectedTotalDiscountIncVat", "ProductUrl", "ImageUrl", "Weight", "Height", "Width", "Length", "CampaignIds", "CampaignGroupData", "CampaignNames", "ProductPriceCampaignId", "ProductPriceListId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Sku"))) { #optional property not found
            $Sku = $null
        } else {
            $Sku = $JsonParameters.PSobject.Properties["Sku"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductId"))) { #optional property not found
            $ProductId = $null
        } else {
            $ProductId = $JsonParameters.PSobject.Properties["ProductId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalId"))) { #optional property not found
            $ExternalId = $null
        } else {
            $ExternalId = $JsonParameters.PSobject.Properties["ExternalId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiscountRate"))) { #optional property not found
            $DiscountRate = $null
        } else {
            $DiscountRate = $JsonParameters.PSobject.Properties["DiscountRate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CartRowId"))) { #optional property not found
            $CartRowId = $null
        } else {
            $CartRowId = $JsonParameters.PSobject.Properties["CartRowId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductContainerBuildId"))) { #optional property not found
            $ProductContainerBuildId = $null
        } else {
            $ProductContainerBuildId = $JsonParameters.PSobject.Properties["ProductContainerBuildId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["Message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArticleNumber"))) { #optional property not found
            $ArticleNumber = $null
        } else {
            $ArticleNumber = $JsonParameters.PSobject.Properties["ArticleNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Gtin"))) { #optional property not found
            $Gtin = $null
        } else {
            $Gtin = $JsonParameters.PSobject.Properties["Gtin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Brand"))) { #optional property not found
            $Brand = $null
        } else {
            $Brand = $JsonParameters.PSobject.Properties["Brand"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Categories"))) { #optional property not found
            $Categories = $null
        } else {
            $Categories = $JsonParameters.PSobject.Properties["Categories"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Variant"))) { #optional property not found
            $Variant = $null
        } else {
            $Variant = $JsonParameters.PSobject.Properties["Variant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Quantity"))) { #optional property not found
            $Quantity = $null
        } else {
            $Quantity = $JsonParameters.PSobject.Properties["Quantity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PriceIncVat"))) { #optional property not found
            $PriceIncVat = $null
        } else {
            $PriceIncVat = $JsonParameters.PSobject.Properties["PriceIncVat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PriceExVat"))) { #optional property not found
            $PriceExVat = $null
        } else {
            $PriceExVat = $JsonParameters.PSobject.Properties["PriceExVat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExpectedTotalPriceIncVat"))) { #optional property not found
            $ExpectedTotalPriceIncVat = $null
        } else {
            $ExpectedTotalPriceIncVat = $JsonParameters.PSobject.Properties["ExpectedTotalPriceIncVat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiscountIncVat"))) { #optional property not found
            $DiscountIncVat = $null
        } else {
            $DiscountIncVat = $JsonParameters.PSobject.Properties["DiscountIncVat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiscountExVat"))) { #optional property not found
            $DiscountExVat = $null
        } else {
            $DiscountExVat = $JsonParameters.PSobject.Properties["DiscountExVat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExpectedTotalDiscountIncVat"))) { #optional property not found
            $ExpectedTotalDiscountIncVat = $null
        } else {
            $ExpectedTotalDiscountIncVat = $JsonParameters.PSobject.Properties["ExpectedTotalDiscountIncVat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductUrl"))) { #optional property not found
            $ProductUrl = $null
        } else {
            $ProductUrl = $JsonParameters.PSobject.Properties["ProductUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ImageUrl"))) { #optional property not found
            $ImageUrl = $null
        } else {
            $ImageUrl = $JsonParameters.PSobject.Properties["ImageUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Weight"))) { #optional property not found
            $Weight = $null
        } else {
            $Weight = $JsonParameters.PSobject.Properties["Weight"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Height"))) { #optional property not found
            $Height = $null
        } else {
            $Height = $JsonParameters.PSobject.Properties["Height"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Width"))) { #optional property not found
            $Width = $null
        } else {
            $Width = $JsonParameters.PSobject.Properties["Width"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Length"))) { #optional property not found
            $Length = $null
        } else {
            $Length = $JsonParameters.PSobject.Properties["Length"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CampaignIds"))) { #optional property not found
            $CampaignIds = $null
        } else {
            $CampaignIds = $JsonParameters.PSobject.Properties["CampaignIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CampaignGroupData"))) { #optional property not found
            $CampaignGroupData = $null
        } else {
            $CampaignGroupData = $JsonParameters.PSobject.Properties["CampaignGroupData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CampaignNames"))) { #optional property not found
            $CampaignNames = $null
        } else {
            $CampaignNames = $JsonParameters.PSobject.Properties["CampaignNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductPriceCampaignId"))) { #optional property not found
            $ProductPriceCampaignId = $null
        } else {
            $ProductPriceCampaignId = $JsonParameters.PSobject.Properties["ProductPriceCampaignId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductPriceListId"))) { #optional property not found
            $ProductPriceListId = $null
        } else {
            $ProductPriceListId = $JsonParameters.PSobject.Properties["ProductPriceListId"].value
        }

        $PSO = [PSCustomObject]@{
            "Sku" = ${Sku}
            "ProductId" = ${ProductId}
            "ExternalId" = ${ExternalId}
            "DiscountRate" = ${DiscountRate}
            "CartRowId" = ${CartRowId}
            "ProductContainerBuildId" = ${ProductContainerBuildId}
            "Message" = ${Message}
            "ArticleNumber" = ${ArticleNumber}
            "Gtin" = ${Gtin}
            "Brand" = ${Brand}
            "Categories" = ${Categories}
            "Name" = ${Name}
            "Variant" = ${Variant}
            "Quantity" = ${Quantity}
            "PriceIncVat" = ${PriceIncVat}
            "PriceExVat" = ${PriceExVat}
            "ExpectedTotalPriceIncVat" = ${ExpectedTotalPriceIncVat}
            "DiscountIncVat" = ${DiscountIncVat}
            "DiscountExVat" = ${DiscountExVat}
            "ExpectedTotalDiscountIncVat" = ${ExpectedTotalDiscountIncVat}
            "ProductUrl" = ${ProductUrl}
            "ImageUrl" = ${ImageUrl}
            "Weight" = ${Weight}
            "Height" = ${Height}
            "Width" = ${Width}
            "Length" = ${Length}
            "CampaignIds" = ${CampaignIds}
            "CampaignGroupData" = ${CampaignGroupData}
            "CampaignNames" = ${CampaignNames}
            "ProductPriceCampaignId" = ${ProductPriceCampaignId}
            "ProductPriceListId" = ${ProductPriceListId}
        }

        return $PSO
    }

}

