# EmailAPI

All URIs are relative to *https://setup.platon.sk/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeMailboxPassword**](EmailAPI.md#changemailboxpassword) | **PATCH** /email/{domain}/mailboxes/{username}/password | Change mailbox password
[**createMailbox**](EmailAPI.md#createmailbox) | **POST** /email/{domain}/mailboxes | Create mailbox


# **changeMailboxPassword**
```swift
    open class func changeMailboxPassword(domain: String, username: String, changeMailboxPasswordRequest: ChangeMailboxPasswordRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Change mailbox password

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let username = "username_example" // String | Mailbox username
let changeMailboxPasswordRequest = changeMailboxPassword_request(password: "password_example") // ChangeMailboxPasswordRequest | Mailbox password payload

// Change mailbox password
EmailAPI.changeMailboxPassword(domain: domain, username: username, changeMailboxPasswordRequest: changeMailboxPasswordRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String** | Domain name | 
 **username** | **String** | Mailbox username | 
 **changeMailboxPasswordRequest** | [**ChangeMailboxPasswordRequest**](ChangeMailboxPasswordRequest.md) | Mailbox password payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMailbox**
```swift
    open class func createMailbox(domain: String, createMailboxRequest: CreateMailboxRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Create mailbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let createMailboxRequest = createMailbox_request(username: "username_example", password: "password_example", name: "name_example") // CreateMailboxRequest | Mailbox payload

// Create mailbox
EmailAPI.createMailbox(domain: domain, createMailboxRequest: createMailboxRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String** | Domain name | 
 **createMailboxRequest** | [**CreateMailboxRequest**](CreateMailboxRequest.md) | Mailbox payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

