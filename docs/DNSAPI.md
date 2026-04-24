# DNSAPI

All URIs are relative to *https://setup.platon.sk/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDnsRecord**](DNSAPI.md#creatednsrecord) | **POST** /dns/{domain}/records | Create DNS record
[**deleteDnsRecord**](DNSAPI.md#deletednsrecord) | **DELETE** /dns/{domain}/records/{recordId} | Delete DNS record
[**getDnsRecords**](DNSAPI.md#getdnsrecords) | **GET** /dns/{domain}/records | Get DNS records by domain
[**updateDnsRecord**](DNSAPI.md#updatednsrecord) | **PATCH** /dns/{domain}/records/{recordId} | Update DNS record


# **createDnsRecord**
```swift
    open class func createDnsRecord(domain: String, createDnsRecordRequest: CreateDnsRecordRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Create DNS record

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let createDnsRecordRequest = createDnsRecord_request(name: "name_example", type: "type_example", content: "content_example", ttl: 123, prio: 123) // CreateDnsRecordRequest | DNS record payload

// Create DNS record
DNSAPI.createDnsRecord(domain: domain, createDnsRecordRequest: createDnsRecordRequest) { (response, error) in
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
 **createDnsRecordRequest** | [**CreateDnsRecordRequest**](CreateDnsRecordRequest.md) | DNS record payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDnsRecord**
```swift
    open class func deleteDnsRecord(domain: String, recordId: Int, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Delete DNS record

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let recordId = 987 // Int | Record ID

// Delete DNS record
DNSAPI.deleteDnsRecord(domain: domain, recordId: recordId) { (response, error) in
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
 **recordId** | **Int** | Record ID | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDnsRecords**
```swift
    open class func getDnsRecords(domain: String, type: String? = nil, completion: @escaping (_ data: GetDnsRecords200Response?, _ error: Error?) -> Void)
```

Get DNS records by domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let type = "type_example" // String | Filter records by type (optional)

// Get DNS records by domain
DNSAPI.getDnsRecords(domain: domain, type: type) { (response, error) in
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
 **type** | **String** | Filter records by type | [optional] 

### Return type

[**GetDnsRecords200Response**](GetDnsRecords200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDnsRecord**
```swift
    open class func updateDnsRecord(domain: String, recordId: Int, updateDnsRecordRequest: UpdateDnsRecordRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Update DNS record

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let recordId = 987 // Int | Record ID
let updateDnsRecordRequest = updateDnsRecord_request(name: "name_example", type: "type_example", content: "content_example", ttl: 123, prio: 123) // UpdateDnsRecordRequest | Partial DNS record payload

// Update DNS record
DNSAPI.updateDnsRecord(domain: domain, recordId: recordId, updateDnsRecordRequest: updateDnsRecordRequest) { (response, error) in
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
 **recordId** | **Int** | Record ID | 
 **updateDnsRecordRequest** | [**UpdateDnsRecordRequest**](UpdateDnsRecordRequest.md) | Partial DNS record payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

