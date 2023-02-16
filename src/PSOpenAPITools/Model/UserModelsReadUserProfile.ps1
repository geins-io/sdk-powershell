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

.PARAMETER UserId
No description available.
.PARAMETER SiteId
No description available.
.PARAMETER Email
No description available.
.PARAMETER FirstName
No description available.
.PARAMETER LastName
No description available.
.PARAMETER PhoneNr
No description available.
.PARAMETER MobilePhoneNr
No description available.
.PARAMETER Company
No description available.
.PARAMETER Address
No description available.
.PARAMETER Address2
No description available.
.PARAMETER Address3
No description available.
.PARAMETER DoorCode
No description available.
.PARAMETER PersonalId
No description available.
.PARAMETER Birthyear
No description available.
.PARAMETER Zip
No description available.
.PARAMETER City
No description available.
.PARAMETER CareOf
No description available.
.PARAMETER Country
No description available.
.PARAMETER MemberId
No description available.
.PARAMETER MemberType
No description available.
.PARAMETER CountryId
No description available.
.PARAMETER UserTypeId
No description available.
.PARAMETER Gender
No description available.
.PARAMETER Newsletter
Decides whether the user should be subscribed to the newsletter.
.OUTPUTS

UserModelsReadUserProfile<PSCustomObject>
#>

function Initialize-UserModelsReadUserProfile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${SiteId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PhoneNr},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MobilePhoneNr},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Company},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address2},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address3},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DoorCode},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PersonalId},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Birthyear},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Zip},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${City},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CareOf},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Country},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MemberId},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MemberType},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${CountryId},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${UserTypeId},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Gender},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Newsletter}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UserModelsReadUserProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "UserId" = ${UserId}
            "SiteId" = ${SiteId}
            "Email" = ${Email}
            "FirstName" = ${FirstName}
            "LastName" = ${LastName}
            "PhoneNr" = ${PhoneNr}
            "MobilePhoneNr" = ${MobilePhoneNr}
            "Company" = ${Company}
            "Address" = ${Address}
            "Address2" = ${Address2}
            "Address3" = ${Address3}
            "DoorCode" = ${DoorCode}
            "PersonalId" = ${PersonalId}
            "Birthyear" = ${Birthyear}
            "Zip" = ${Zip}
            "City" = ${City}
            "CareOf" = ${CareOf}
            "Country" = ${Country}
            "MemberId" = ${MemberId}
            "MemberType" = ${MemberType}
            "CountryId" = ${CountryId}
            "UserTypeId" = ${UserTypeId}
            "Gender" = ${Gender}
            "Newsletter" = ${Newsletter}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserModelsReadUserProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserModelsReadUserProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserModelsReadUserProfile<PSCustomObject>
#>
function ConvertFrom-JsonToUserModelsReadUserProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UserModelsReadUserProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UserModelsReadUserProfile
        $AllProperties = ("UserId", "SiteId", "Email", "FirstName", "LastName", "PhoneNr", "MobilePhoneNr", "Company", "Address", "Address2", "Address3", "DoorCode", "PersonalId", "Birthyear", "Zip", "City", "CareOf", "Country", "MemberId", "MemberType", "CountryId", "UserTypeId", "Gender", "Newsletter")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["UserId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SiteId"))) { #optional property not found
            $SiteId = $null
        } else {
            $SiteId = $JsonParameters.PSobject.Properties["SiteId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["Email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FirstName"))) { #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["FirstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastName"))) { #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties["LastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PhoneNr"))) { #optional property not found
            $PhoneNr = $null
        } else {
            $PhoneNr = $JsonParameters.PSobject.Properties["PhoneNr"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MobilePhoneNr"))) { #optional property not found
            $MobilePhoneNr = $null
        } else {
            $MobilePhoneNr = $JsonParameters.PSobject.Properties["MobilePhoneNr"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Company"))) { #optional property not found
            $Company = $null
        } else {
            $Company = $JsonParameters.PSobject.Properties["Company"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Address"))) { #optional property not found
            $Address = $null
        } else {
            $Address = $JsonParameters.PSobject.Properties["Address"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DoorCode"))) { #optional property not found
            $DoorCode = $null
        } else {
            $DoorCode = $JsonParameters.PSobject.Properties["DoorCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PersonalId"))) { #optional property not found
            $PersonalId = $null
        } else {
            $PersonalId = $JsonParameters.PSobject.Properties["PersonalId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Birthyear"))) { #optional property not found
            $Birthyear = $null
        } else {
            $Birthyear = $JsonParameters.PSobject.Properties["Birthyear"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Zip"))) { #optional property not found
            $Zip = $null
        } else {
            $Zip = $JsonParameters.PSobject.Properties["Zip"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "City"))) { #optional property not found
            $City = $null
        } else {
            $City = $JsonParameters.PSobject.Properties["City"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CareOf"))) { #optional property not found
            $CareOf = $null
        } else {
            $CareOf = $JsonParameters.PSobject.Properties["CareOf"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Country"))) { #optional property not found
            $Country = $null
        } else {
            $Country = $JsonParameters.PSobject.Properties["Country"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemberId"))) { #optional property not found
            $MemberId = $null
        } else {
            $MemberId = $JsonParameters.PSobject.Properties["MemberId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemberType"))) { #optional property not found
            $MemberType = $null
        } else {
            $MemberType = $JsonParameters.PSobject.Properties["MemberType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CountryId"))) { #optional property not found
            $CountryId = $null
        } else {
            $CountryId = $JsonParameters.PSobject.Properties["CountryId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserTypeId"))) { #optional property not found
            $UserTypeId = $null
        } else {
            $UserTypeId = $JsonParameters.PSobject.Properties["UserTypeId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Gender"))) { #optional property not found
            $Gender = $null
        } else {
            $Gender = $JsonParameters.PSobject.Properties["Gender"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Newsletter"))) { #optional property not found
            $Newsletter = $null
        } else {
            $Newsletter = $JsonParameters.PSobject.Properties["Newsletter"].value
        }

        $PSO = [PSCustomObject]@{
            "UserId" = ${UserId}
            "SiteId" = ${SiteId}
            "Email" = ${Email}
            "FirstName" = ${FirstName}
            "LastName" = ${LastName}
            "PhoneNr" = ${PhoneNr}
            "MobilePhoneNr" = ${MobilePhoneNr}
            "Company" = ${Company}
            "Address" = ${Address}
            "Address2" = ${Address2}
            "Address3" = ${Address3}
            "DoorCode" = ${DoorCode}
            "PersonalId" = ${PersonalId}
            "Birthyear" = ${Birthyear}
            "Zip" = ${Zip}
            "City" = ${City}
            "CareOf" = ${CareOf}
            "Country" = ${Country}
            "MemberId" = ${MemberId}
            "MemberType" = ${MemberType}
            "CountryId" = ${CountryId}
            "UserTypeId" = ${UserTypeId}
            "Gender" = ${Gender}
            "Newsletter" = ${Newsletter}
        }

        return $PSO
    }

}

