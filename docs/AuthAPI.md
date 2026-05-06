# AuthAPI

All URIs are relative to *https://setup.platon.sk/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAuthToken**](AuthAPI.md#createauthtoken) | **POST** /auth/token | Create anonymous auth token


# **createAuthToken**
```swift
    open class func createAuthToken(completion: @escaping (_ data: CreateAuthToken200Response?, _ error: Error?) -> Void)
```

Create anonymous auth token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK


// Create anonymous auth token
AuthAPI.createAuthToken() { (response, error) in
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

[**CreateAuthToken200Response**](CreateAuthToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

