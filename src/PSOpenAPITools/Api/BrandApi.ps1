#
# Geins Management API
#  Geins Management API is an RESTful api to power your applications who manages your geins services. Geins provides an easy-to-use and scalable solution for managing all aspects of an online store, from product listings and customer information to order processing and payment transactions.   :::tip With this API, you can build custom applications and integrate with third-party systems, dashboards and other bussiness logic apps. :::    ## Getting started Once you have created an account, you can start using the Management API by creating an `API key`. You can create as many API keys as you need. Each `API key` is connected to a specific account so you can keep track of operations and manage keys. You can find your `API key` in the `geins merchant center`.   ### Fast track Use one of our [SDKs](https://docs.geins.io/docs/sdk/introduction) to get started quickly. The SDKs are available for the most popular programming languages and frameworks.  Or, if you prefer to just take it for a test run:  [![Run in Postman](https://run.pstmn.io/button.svg)](https://god.gw.postman.com/run-collection/25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553?action=collection%2Ffork&collection-url=entityId%3D25895885-aaf6598f-1a7c-4949-85d7-ba846c42d553%26entityType%3Dcollection%26workspaceId%3Da2a179ce-158e-46b0-8d06-e9640f45112c)  ### Authentication Two authentication methods are supported:   - `API Key`   - `Basic Auth` 
# Version: v1.7
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create a new brand

.DESCRIPTION

No description available.

.PARAMETER Brand
The brand to create.

.PARAMETER ReturnType

Select the return type (optional): application/json, text/json, application/xml, text/xml

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EnvelopeBrandModelsReadBrand
#>
function New-Brand {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Brand},
        [String]
        [ValidateSet("application/json", "text/json", "application/xml", "text/xml")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-Brand' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json', 'text/json', 'application/xml', 'text/xml')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded')

        $LocalVarUri = '/API/Brand'

        if (!$Brand) {
            throw "Error! The required parameter `Brand` missing when calling create_brand."
        }

        $LocalVarBodyParameter = $Brand | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiKey"]) {
            $LocalVarHeaderParameters['apiKey'] = $Configuration["ApiKey"]["apiKey"]
            Write-Verbose ("Using API key 'apiKey' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "EnvelopeBrandModelsReadBrand" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get a specific brand

.DESCRIPTION

No description available.

.PARAMETER Id
The id of the brand to get.

.PARAMETER ReturnType

Select the return type (optional): application/json, text/json, application/xml, text/xml

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EnvelopeBrandModelsReadBrand
#>
function Get-BrandById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${Id},
        [String]
        [ValidateSet("application/json", "text/json", "application/xml", "text/xml")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BrandById' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json', 'text/json', 'application/xml', 'text/xml')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        $LocalVarUri = '/API/Brand/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling get_brand_by_id."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiKey"]) {
            $LocalVarHeaderParameters['apiKey'] = $Configuration["ApiKey"]["apiKey"]
            Write-Verbose ("Using API key 'apiKey' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "EnvelopeBrandModelsReadBrand" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Query brands

.DESCRIPTION

No description available.

.PARAMETER Query
The details of the query.

.PARAMETER ReturnType

Select the return type (optional): application/json, text/json, application/xml, text/xml

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

BrandModelsReadBrand[]
#>
function Invoke-QueryBrands {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Query},
        [String]
        [ValidateSet("application/json", "text/json", "application/xml", "text/xml")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-QueryBrands' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json', 'text/json', 'application/xml', 'text/xml')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded')

        $LocalVarUri = '/API/Brand/Query'

        if (!$Query) {
            throw "Error! The required parameter `Query` missing when calling query_brands."
        }

        $LocalVarBodyParameter = $Query | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiKey"]) {
            $LocalVarHeaderParameters['apiKey'] = $Configuration["ApiKey"]["apiKey"]
            Write-Verbose ("Using API key 'apiKey' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "BrandModelsReadBrand[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Updates a brand

.DESCRIPTION

No description available.

.PARAMETER Id
The id of the brand to update.

.PARAMETER Brand
The brand data to update.

.PARAMETER ReturnType

Select the return type (optional): application/json, text/json, application/xml, text/xml

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EnvelopeBrandModelsReadBrand
#>
function Update-Brand {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Brand},
        [String]
        [ValidateSet("application/json", "text/json", "application/xml", "text/xml")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-Brand' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json', 'text/json', 'application/xml', 'text/xml')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded')

        $LocalVarUri = '/API/Brand/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling update_brand."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if (!$Brand) {
            throw "Error! The required parameter `Brand` missing when calling update_brand."
        }

        $LocalVarBodyParameter = $Brand | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiKey"]) {
            $LocalVarHeaderParameters['apiKey'] = $Configuration["ApiKey"]["apiKey"]
            Write-Verbose ("Using API key 'apiKey' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "EnvelopeBrandModelsReadBrand" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

