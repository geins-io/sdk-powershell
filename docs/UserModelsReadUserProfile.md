# UserModelsReadUserProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **Int32** |  | [optional] 
**SiteId** | **Int32** |  | [optional] 
**Email** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**PhoneNr** | **String** |  | [optional] 
**MobilePhoneNr** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
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
**MemberId** | **Int32** |  | [optional] 
**MemberType** | **String** |  | [optional] 
**CountryId** | **Int32** |  | [optional] 
**UserTypeId** | **Int32** |  | [optional] 
**Gender** | **Boolean** |  | [optional] 
**Newsletter** | **Boolean** | Decides whether the user should be subscribed to the newsletter. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserModelsReadUserProfile = Initialize-PSOpenAPIToolsUserModelsReadUserProfile  -UserId null `
 -SiteId null `
 -Email null `
 -FirstName null `
 -LastName null `
 -PhoneNr null `
 -MobilePhoneNr null `
 -Company null `
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
 -MemberId null `
 -MemberType null `
 -CountryId null `
 -UserTypeId null `
 -Gender null `
 -Newsletter null
```

- Convert the resource to JSON
```powershell
$UserModelsReadUserProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

