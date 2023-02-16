# PSOpenAPITools.PSOpenAPITools/Api.UserApi

All URIs are relative to *https://mgmtapi.geins.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-UserProfile**](UserApi.md#New-UserProfile) | **POST** /API/User | Create user profile
[**Invoke-DeleteUserProfile**](UserApi.md#Invoke-DeleteUserProfile) | **DELETE** /API/User/email | Delete user profile
[**Get-UserProfile**](UserApi.md#Get-UserProfile) | **POST** /API/User/Query | Get a specific user profile
[**Update-UserProfile**](UserApi.md#Update-UserProfile) | **PUT** /API/User | Update user profile


<a name="New-UserProfile"></a>
# **New-UserProfile**
> EnvelopeUserModelsReadUserProfile New-UserProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserProfile] <PSCustomObject><br>

Create user profile

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKey
$Configuration.ApiKey.x-apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-apikey = "Bearer"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UserModelsWriteUserProfile = Initialize-UserModelsWriteUserProfile -UserId 0 -SiteId 0 -Email "MyEmail" -Password "MyPassword" -FirstName "MyFirstName" -LastName "MyLastName" -PhoneNr "MyPhoneNr" -MobilePhoneNr "MyMobilePhoneNr" -Company "MyCompany" -UserTypeId 0 -Address "MyAddress" -Address2 "MyAddress2" -Address3 "MyAddress3" -DoorCode "MyDoorCode" -PersonalId "MyPersonalId" -Birthyear "MyBirthyear" -Zip "MyZip" -City "MyCity" -CareOf "MyCareOf" -Country "MyCountry" -CountryId 0 -Gender $false -Newsletter $false -HasExternalAuth $false # UserModelsWriteUserProfile | The user profile

# Create user profile
try {
    $Result = New-UserProfile -UserProfile $UserProfile
} catch {
    Write-Host ("Exception occurred when calling New-UserProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserProfile** | [**UserModelsWriteUserProfile**](UserModelsWriteUserProfile.md)| The user profile | 

### Return type

[**EnvelopeUserModelsReadUserProfile**](EnvelopeUserModelsReadUserProfile.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteUserProfile"></a>
# **Invoke-DeleteUserProfile**
> SystemCollectionsHashtable Invoke-DeleteUserProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Email] <String><br>

Delete user profile

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKey
$Configuration.ApiKey.x-apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-apikey = "Bearer"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Email = "MyEmail" # String | Email address

# Delete user profile
try {
    $Result = Invoke-DeleteUserProfile -Email $Email
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteUserProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Email** | **String**| Email address | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserProfile"></a>
# **Get-UserProfile**
> EnvelopeUserModelsReadUserProfile Get-UserProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <PSCustomObject><br>

Get a specific user profile

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKey
$Configuration.ApiKey.x-apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-apikey = "Bearer"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UserModelsUserProfileQuery = Initialize-UserModelsUserProfileQuery -UserId 0 -Email "MyEmail" # UserModelsUserProfileQuery | The details of the query.

# Get a specific user profile
try {
    $Result = Get-UserProfile -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Get-UserProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | [**UserModelsUserProfileQuery**](UserModelsUserProfileQuery.md)| The details of the query. | 

### Return type

[**EnvelopeUserModelsReadUserProfile**](EnvelopeUserModelsReadUserProfile.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-UserProfile"></a>
# **Update-UserProfile**
> EnvelopeUserModelsReadUserProfile Update-UserProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserProfile] <PSCustomObject><br>

Update user profile

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKey
$Configuration.ApiKey.x-apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-apikey = "Bearer"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UserModelsWriteUserProfile = Initialize-UserModelsWriteUserProfile -UserId 0 -SiteId 0 -Email "MyEmail" -Password "MyPassword" -FirstName "MyFirstName" -LastName "MyLastName" -PhoneNr "MyPhoneNr" -MobilePhoneNr "MyMobilePhoneNr" -Company "MyCompany" -UserTypeId 0 -Address "MyAddress" -Address2 "MyAddress2" -Address3 "MyAddress3" -DoorCode "MyDoorCode" -PersonalId "MyPersonalId" -Birthyear "MyBirthyear" -Zip "MyZip" -City "MyCity" -CareOf "MyCareOf" -Country "MyCountry" -CountryId 0 -Gender $false -Newsletter $false -HasExternalAuth $false # UserModelsWriteUserProfile | The user profile

# Update user profile
try {
    $Result = Update-UserProfile -UserProfile $UserProfile
} catch {
    Write-Host ("Exception occurred when calling Update-UserProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserProfile** | [**UserModelsWriteUserProfile**](UserModelsWriteUserProfile.md)| The user profile | 

### Return type

[**EnvelopeUserModelsReadUserProfile**](EnvelopeUserModelsReadUserProfile.md) (PSCustomObject)

### Authorization

[apiKey](../README.md#apiKey), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

