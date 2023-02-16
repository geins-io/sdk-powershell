# UserModelsWriteUserProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **Int32** |  | [optional] 
**SiteId** | **Int32** |  | [optional] 
**Email** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**PhoneNr** | **String** |  | [optional] 
**MobilePhoneNr** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**UserTypeId** | **Int32** |  | [optional] 
**Address** | **String** |  | [optional] 
**Address2** | **String** |  | [optional] 
**Address3** | **String** |  | [optional] 
**DoorCode** | **String** |  | [optional] 
**PersonalId** | **String** |  | [optional] 
**Birthyear** | **String** |  | [optional] 
**Zip** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**CareOf** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**CountryId** | **Int32** |  | [optional] 
**Gender** | **Boolean** |  | [optional] 
**Newsletter** | **Boolean** | Decides whether the user should be subscribed to the newsletter. | [optional] 
**HasExternalAuth** | **Boolean** | Set this to true if the management platform will not be the main way of authentication. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserModelsWriteUserProfile = Initialize-PSOpenAPIToolsUserModelsWriteUserProfile  -UserId null `
 -SiteId null `
 -Email null `
 -Password null `
 -FirstName null `
 -LastName null `
 -PhoneNr null `
 -MobilePhoneNr null `
 -Company null `
 -UserTypeId null `
 -Address null `
 -Address2 null `
 -Address3 null `
 -DoorCode null `
 -PersonalId null `
 -Birthyear null `
 -Zip null `
 -City null `
 -CareOf null `
 -Country null `
 -CountryId null `
 -Gender null `
 -Newsletter null `
 -HasExternalAuth null
```

- Convert the resource to JSON
```powershell
$UserModelsWriteUserProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

