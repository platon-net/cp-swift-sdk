# AntispamAPI

All URIs are relative to *https://setup.platon.sk/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAntispamMaildata**](AntispamAPI.md#addantispammaildata) | **POST** /antispam/maildata | Add maildata to antispam engine
[**checkAntispamMaildataRules**](AntispamAPI.md#checkantispammaildatarules) | **POST** /antispam/maildata/check | Check maildata against existing antispam rules
[**createAntispamEmailRule**](AntispamAPI.md#createantispamemailrule) | **POST** /antispam/rules | Create antispam email rule or increment existing rule hitcount


# **addAntispamMaildata**
```swift
    open class func addAntispamMaildata(addAntispamMaildataRequest: AddAntispamMaildataRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Add maildata to antispam engine

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let addAntispamMaildataRequest = addAntispamMaildata_request(maildata: "TODO") // AddAntispamMaildataRequest | Maildata payload

// Add maildata to antispam engine
AntispamAPI.addAntispamMaildata(addAntispamMaildataRequest: addAntispamMaildataRequest) { (response, error) in
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
 **addAntispamMaildataRequest** | [**AddAntispamMaildataRequest**](AddAntispamMaildataRequest.md) | Maildata payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkAntispamMaildataRules**
```swift
    open class func checkAntispamMaildataRules(checkAntispamMaildataRulesRequest: CheckAntispamMaildataRulesRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Check maildata against existing antispam rules

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let checkAntispamMaildataRulesRequest = checkAntispamMaildataRules_request(maildata: "TODO") // CheckAntispamMaildataRulesRequest | Maildata payload

// Check maildata against existing antispam rules
AntispamAPI.checkAntispamMaildataRules(checkAntispamMaildataRulesRequest: checkAntispamMaildataRulesRequest) { (response, error) in
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
 **checkAntispamMaildataRulesRequest** | [**CheckAntispamMaildataRulesRequest**](CheckAntispamMaildataRulesRequest.md) | Maildata payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAntispamEmailRule**
```swift
    open class func createAntispamEmailRule(createAntispamEmailRuleRequest: CreateAntispamEmailRuleRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Create antispam email rule or increment existing rule hitcount

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let createAntispamEmailRuleRequest = createAntispamEmailRule_request(type: "type_example", pattern: "pattern_example") // CreateAntispamEmailRuleRequest | Antispam email rule payload

// Create antispam email rule or increment existing rule hitcount
AntispamAPI.createAntispamEmailRule(createAntispamEmailRuleRequest: createAntispamEmailRuleRequest) { (response, error) in
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
 **createAntispamEmailRuleRequest** | [**CreateAntispamEmailRuleRequest**](CreateAntispamEmailRuleRequest.md) | Antispam email rule payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

