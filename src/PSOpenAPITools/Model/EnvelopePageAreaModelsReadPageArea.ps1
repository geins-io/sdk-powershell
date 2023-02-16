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

An envelope for the result of and action taken on a resource.

.PARAMETER Message
A status message for the action taken.
.PARAMETER Details
Any validation messages for the data on the current action.
.PARAMETER Resource
No description available.
.PARAMETER PageResult
No description available.
.OUTPUTS

EnvelopePageAreaModelsReadPageArea<PSCustomObject>
#>

function Initialize-EnvelopePageAreaModelsReadPageArea {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Details},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Resource},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PageResult}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => EnvelopePageAreaModelsReadPageArea' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "Message" = ${Message}
            "Details" = ${Details}
            "Resource" = ${Resource}
            "PageResult" = ${PageResult}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EnvelopePageAreaModelsReadPageArea<PSCustomObject>

.DESCRIPTION

Convert from JSON to EnvelopePageAreaModelsReadPageArea<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EnvelopePageAreaModelsReadPageArea<PSCustomObject>
#>
function ConvertFrom-JsonToEnvelopePageAreaModelsReadPageArea {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => EnvelopePageAreaModelsReadPageArea' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EnvelopePageAreaModelsReadPageArea
        $AllProperties = ("Message", "Details", "Resource", "PageResult")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["Message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Details"))) { #optional property not found
            $Details = $null
        } else {
            $Details = $JsonParameters.PSobject.Properties["Details"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Resource"))) { #optional property not found
            $Resource = $null
        } else {
            $Resource = $JsonParameters.PSobject.Properties["Resource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PageResult"))) { #optional property not found
            $PageResult = $null
        } else {
            $PageResult = $JsonParameters.PSobject.Properties["PageResult"].value
        }

        $PSO = [PSCustomObject]@{
            "Message" = ${Message}
            "Details" = ${Details}
            "Resource" = ${Resource}
            "PageResult" = ${PageResult}
        }

        return $PSO
    }

}

