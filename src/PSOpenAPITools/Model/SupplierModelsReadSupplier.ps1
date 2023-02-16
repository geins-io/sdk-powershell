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

A product supplier.

.PARAMETER SupplierId
The unique identifier for the supplier.
.PARAMETER Name
The name of the supplier.
.PARAMETER Address1
The first address line of the supplier.
.PARAMETER Address2
The second address line of the supplier.
.PARAMETER Address3
The third address line of the supplier.
.PARAMETER ZipCode
The zip code of the supplier.
.PARAMETER Country
The country of the supplier.
.PARAMETER ContactPerson
The contact person of the supplier.
.PARAMETER Phone1
The primary phone number of the supplier.
.PARAMETER Phone2
The secondary phone number of the supplier.
.PARAMETER Email
The email address of the supplier.
.PARAMETER ExternalId
External Id of the supplier.
.OUTPUTS

SupplierModelsReadSupplier<PSCustomObject>
#>

function Initialize-SupplierModelsReadSupplier {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${SupplierId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address1},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address2},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address3},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ZipCode},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Country},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContactPerson},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone1},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone2},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalId}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => SupplierModelsReadSupplier' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "SupplierId" = ${SupplierId}
            "Name" = ${Name}
            "Address1" = ${Address1}
            "Address2" = ${Address2}
            "Address3" = ${Address3}
            "ZipCode" = ${ZipCode}
            "Country" = ${Country}
            "ContactPerson" = ${ContactPerson}
            "Phone1" = ${Phone1}
            "Phone2" = ${Phone2}
            "Email" = ${Email}
            "ExternalId" = ${ExternalId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SupplierModelsReadSupplier<PSCustomObject>

.DESCRIPTION

Convert from JSON to SupplierModelsReadSupplier<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SupplierModelsReadSupplier<PSCustomObject>
#>
function ConvertFrom-JsonToSupplierModelsReadSupplier {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => SupplierModelsReadSupplier' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SupplierModelsReadSupplier
        $AllProperties = ("SupplierId", "Name", "Address1", "Address2", "Address3", "ZipCode", "Country", "ContactPerson", "Phone1", "Phone2", "Email", "ExternalId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SupplierId"))) { #optional property not found
            $SupplierId = $null
        } else {
            $SupplierId = $JsonParameters.PSobject.Properties["SupplierId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Address1"))) { #optional property not found
            $Address1 = $null
        } else {
            $Address1 = $JsonParameters.PSobject.Properties["Address1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Address2"))) { #optional property not found
            $Address2 = $null
        } else {
            $Address2 = $JsonParameters.PSobject.Properties["Address2"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Address3"))) { #optional property not found
            $Address3 = $null
        } else {
            $Address3 = $JsonParameters.PSobject.Properties["Address3"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ZipCode"))) { #optional property not found
            $ZipCode = $null
        } else {
            $ZipCode = $JsonParameters.PSobject.Properties["ZipCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Country"))) { #optional property not found
            $Country = $null
        } else {
            $Country = $JsonParameters.PSobject.Properties["Country"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ContactPerson"))) { #optional property not found
            $ContactPerson = $null
        } else {
            $ContactPerson = $JsonParameters.PSobject.Properties["ContactPerson"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Phone1"))) { #optional property not found
            $Phone1 = $null
        } else {
            $Phone1 = $JsonParameters.PSobject.Properties["Phone1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Phone2"))) { #optional property not found
            $Phone2 = $null
        } else {
            $Phone2 = $JsonParameters.PSobject.Properties["Phone2"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["Email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalId"))) { #optional property not found
            $ExternalId = $null
        } else {
            $ExternalId = $JsonParameters.PSobject.Properties["ExternalId"].value
        }

        $PSO = [PSCustomObject]@{
            "SupplierId" = ${SupplierId}
            "Name" = ${Name}
            "Address1" = ${Address1}
            "Address2" = ${Address2}
            "Address3" = ${Address3}
            "ZipCode" = ${ZipCode}
            "Country" = ${Country}
            "ContactPerson" = ${ContactPerson}
            "Phone1" = ${Phone1}
            "Phone2" = ${Phone2}
            "Email" = ${Email}
            "ExternalId" = ${ExternalId}
        }

        return $PSO
    }

}
