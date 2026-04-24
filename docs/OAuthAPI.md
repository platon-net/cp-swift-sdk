# OAuthAPI

All URIs are relative to *https://setup.platon.sk/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOauthRequest**](OAuthAPI.md#createoauthrequest) | **POST** /oauth/requests | Create OAuth request
[**deleteOauthToken**](OAuthAPI.md#deleteoauthtoken) | **DELETE** /oauth/tokens | Delete OAuth token
[**getOauthScopes**](OAuthAPI.md#getoauthscopes) | **GET** /oauth/scopes | List available OAuth scopes
[**refreshOauthToken**](OAuthAPI.md#refreshoauthtoken) | **POST** /oauth/tokens/refresh | Refresh OAuth token
[**verifyOauthRequest**](OAuthAPI.md#verifyoauthrequest) | **GET** /oauth/requests/verify | Verify OAuth request


# **createOauthRequest**
```swift
    open class func createOauthRequest(createOauthRequestRequest: CreateOauthRequestRequest? = nil, completion: @escaping (_ data: CreateOauthRequest200Response?, _ error: Error?) -> Void)
```

Create OAuth request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let createOauthRequestRequest = createOauthRequest_request(appName: "appName_example", appUrlHomepage: "appUrlHomepage_example", appUrlReturn: "appUrlReturn_example", scopes: ["scopes_example"]) // CreateOauthRequestRequest | OAuth create payload (optional)

// Create OAuth request
OAuthAPI.createOauthRequest(createOauthRequestRequest: createOauthRequestRequest) { (response, error) in
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
 **createOauthRequestRequest** | [**CreateOauthRequestRequest**](CreateOauthRequestRequest.md) | OAuth create payload | [optional] 

### Return type

[**CreateOauthRequest200Response**](CreateOauthRequest200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOauthToken**
```swift
    open class func deleteOauthToken(token: String, completion: @escaping (_ data: DeleteOauthToken200Response?, _ error: Error?) -> Void)
```

Delete OAuth token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let token = "token_example" // String | OAuth token

// Delete OAuth token
OAuthAPI.deleteOauthToken(token: token) { (response, error) in
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
 **token** | **String** | OAuth token | 

### Return type

[**DeleteOauthToken200Response**](DeleteOauthToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOauthScopes**
```swift
    open class func getOauthScopes(completion: @escaping (_ data: GetOauthScopes200Response?, _ error: Error?) -> Void)
```

List available OAuth scopes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK


// List available OAuth scopes
OAuthAPI.getOauthScopes() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**GetOauthScopes200Response**](GetOauthScopes200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshOauthToken**
```swift
    open class func refreshOauthToken(refreshOauthTokenRequest: RefreshOauthTokenRequest, completion: @escaping (_ data: VerifyOauthRequest200Response?, _ error: Error?) -> Void)
```

Refresh OAuth token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let refreshOauthTokenRequest = refreshOauthToken_request(token: "token_example") // RefreshOauthTokenRequest | OAuth refresh payload

// Refresh OAuth token
OAuthAPI.refreshOauthToken(refreshOauthTokenRequest: refreshOauthTokenRequest) { (response, error) in
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
 **refreshOauthTokenRequest** | [**RefreshOauthTokenRequest**](RefreshOauthTokenRequest.md) | OAuth refresh payload | 

### Return type

[**VerifyOauthRequest200Response**](VerifyOauthRequest200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyOauthRequest**
```swift
    open class func verifyOauthRequest(verifyToken: String, completion: @escaping (_ data: VerifyOauthRequest200Response?, _ error: Error?) -> Void)
```

Verify OAuth request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let verifyToken = "verifyToken_example" // String | Verify token from OAuth create response

// Verify OAuth request
OAuthAPI.verifyOauthRequest(verifyToken: verifyToken) { (response, error) in
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
 **verifyToken** | **String** | Verify token from OAuth create response | 

### Return type

[**VerifyOauthRequest200Response**](VerifyOauthRequest200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

