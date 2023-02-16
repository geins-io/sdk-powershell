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

A query to filter categories by.

.PARAMETER CreatedAfter
Limits query to categories created after the specified date.
.PARAMETER CategoryIds
Limits query to only include the supplied category ids.
.OUTPUTS

CategoryModelsCategoryQuery<PSCustomObject>
#>

function Initialize-CategoryModelsCategoryQuery {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAfter},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32[]]
        ${CategoryIds}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => CategoryModelsCategoryQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "CreatedAfter" = ${CreatedAfter}
            "CategoryIds" = ${CategoryIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CategoryModelsCategoryQuery<PSCustomObject>

.DESCRIPTION

Convert from JSON to CategoryModelsCategoryQuery<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CategoryModelsCategoryQuery<PSCustomObject>
#>
function ConvertFrom-JsonToCategoryModelsCategoryQuery {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => CategoryModelsCategoryQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CategoryModelsCategoryQuery
        $AllProperties = ("CreatedAfter", "CategoryIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreatedAfter"))) { #optional property not found
            $CreatedAfter = $null
        } else {
            $CreatedAfter = $JsonParameters.PSobject.Properties["CreatedAfter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CategoryIds"))) { #optional property not found
            $CategoryIds = $null
        } else {
            $CategoryIds = $JsonParameters.PSobject.Properties["CategoryIds"].value
        }

        $PSO = [PSCustomObject]@{
            "CreatedAfter" = ${CreatedAfter}
            "CategoryIds" = ${CategoryIds}
        }

        return $PSO
    }

}

