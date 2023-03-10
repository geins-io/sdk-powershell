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

A prroduct query.

.PARAMETER UpdatedAfter
Limits query to products updated after the specified date.
.PARAMETER ProductIds
Limits query to only include the supplied product ids.
.PARAMETER ArticleNumbers
Limits query to only include products with supplied article numbers.
.PARAMETER OnlySellable
Limits query to only include products that are available for purchase
.PARAMETER FeedId
Limits query to only include products contained in the specified feed.
.PARAMETER BatchId
Used to fetch products where the result set is split into batches
.OUTPUTS

ProductModelsProductQuery<PSCustomObject>
#>

function Initialize-ProductModelsProductQuery {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${UpdatedAfter},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32[]]
        ${ProductIds},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ArticleNumbers},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${OnlySellable},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${FeedId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BatchId}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ProductModelsProductQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "UpdatedAfter" = ${UpdatedAfter}
            "ProductIds" = ${ProductIds}
            "ArticleNumbers" = ${ArticleNumbers}
            "OnlySellable" = ${OnlySellable}
            "FeedId" = ${FeedId}
            "BatchId" = ${BatchId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProductModelsProductQuery<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProductModelsProductQuery<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProductModelsProductQuery<PSCustomObject>
#>
function ConvertFrom-JsonToProductModelsProductQuery {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ProductModelsProductQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProductModelsProductQuery
        $AllProperties = ("UpdatedAfter", "ProductIds", "ArticleNumbers", "OnlySellable", "FeedId", "BatchId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UpdatedAfter"))) { #optional property not found
            $UpdatedAfter = $null
        } else {
            $UpdatedAfter = $JsonParameters.PSobject.Properties["UpdatedAfter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductIds"))) { #optional property not found
            $ProductIds = $null
        } else {
            $ProductIds = $JsonParameters.PSobject.Properties["ProductIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArticleNumbers"))) { #optional property not found
            $ArticleNumbers = $null
        } else {
            $ArticleNumbers = $JsonParameters.PSobject.Properties["ArticleNumbers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OnlySellable"))) { #optional property not found
            $OnlySellable = $null
        } else {
            $OnlySellable = $JsonParameters.PSobject.Properties["OnlySellable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FeedId"))) { #optional property not found
            $FeedId = $null
        } else {
            $FeedId = $JsonParameters.PSobject.Properties["FeedId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BatchId"))) { #optional property not found
            $BatchId = $null
        } else {
            $BatchId = $JsonParameters.PSobject.Properties["BatchId"].value
        }

        $PSO = [PSCustomObject]@{
            "UpdatedAfter" = ${UpdatedAfter}
            "ProductIds" = ${ProductIds}
            "ArticleNumbers" = ${ArticleNumbers}
            "OnlySellable" = ${OnlySellable}
            "FeedId" = ${FeedId}
            "BatchId" = ${BatchId}
        }

        return $PSO
    }

}

