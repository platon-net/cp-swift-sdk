# DomainAPI

All URIs are relative to *https://setup.platon.sk/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeDomainNameservers**](DomainAPI.md#changedomainnameservers) | **PATCH** /domains/{domain}/nameservers | Change domain nameservers
[**closeDomain**](DomainAPI.md#closedomain) | **DELETE** /domains/{domain} | Close external customer domain product
[**getDomainInfo**](DomainAPI.md#getdomaininfo) | **GET** /domains/{domain} | Get domain information and availability
[**listDomains**](DomainAPI.md#listdomains) | **GET** /domains | List customer domains
[**registerDomain**](DomainAPI.md#registerdomain) | **POST** /domains/{domain}/register | Register domain
[**renewDomain**](DomainAPI.md#renewdomain) | **POST** /domains/{domain}/renew | Renew domain
[**whoisDomain**](DomainAPI.md#whoisdomain) | **GET** /domains/{domain}/whois | Check domain WHOIS availability and prices


# **changeDomainNameservers**
```swift
    open class func changeDomainNameservers(domain: String, changeDomainNameserversRequest: ChangeDomainNameserversRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Change domain nameservers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let changeDomainNameserversRequest = changeDomainNameservers_request(cname: "cname_example", dnsServersOpt: "dnsServersOpt_example", ns: ["ns_example"], ns1: "ns1_example", ns1Ipv4: "ns1Ipv4_example", ns1Ipv6: "ns1Ipv6_example", ns2: "ns2_example", ns2Ipv4: "ns2Ipv4_example", ns2Ipv6: "ns2Ipv6_example", ns3: "ns3_example", ns3Ipv4: "ns3Ipv4_example", ns3Ipv6: "ns3Ipv6_example", ns4: "ns4_example", ns4Ipv4: "ns4Ipv4_example", ns4Ipv6: "ns4Ipv6_example") // ChangeDomainNameserversRequest | Nameserver payload

// Change domain nameservers
DomainAPI.changeDomainNameservers(domain: domain, changeDomainNameserversRequest: changeDomainNameserversRequest) { (response, error) in
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
 **changeDomainNameserversRequest** | [**ChangeDomainNameserversRequest**](ChangeDomainNameserversRequest.md) | Nameserver payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **closeDomain**
```swift
    open class func closeDomain(domain: String, cname: String, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Close external customer domain product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let cname = "cname_example" // String | Customer name

// Close external customer domain product
DomainAPI.closeDomain(domain: domain, cname: cname) { (response, error) in
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
 **cname** | **String** | Customer name | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomainInfo**
```swift
    open class func getDomainInfo(domain: String, cname: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Get domain information and availability

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let cname = "cname_example" // String | Customer name for product context (optional)

// Get domain information and availability
DomainAPI.getDomainInfo(domain: domain, cname: cname) { (response, error) in
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
 **cname** | **String** | Customer name for product context | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDomains**
```swift
    open class func listDomains(cname: String, completion: @escaping (_ data: ListDomains200Response?, _ error: Error?) -> Void)
```

List customer domains

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let cname = "cname_example" // String | Customer name

// List customer domains
DomainAPI.listDomains(cname: cname) { (response, error) in
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
 **cname** | **String** | Customer name | 

### Return type

[**ListDomains200Response**](ListDomains200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerDomain**
```swift
    open class func registerDomain(domain: String, registerDomainRequest: RegisterDomainRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Register domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let registerDomainRequest = registerDomain_request(cname: "cname_example", period: 123) // RegisterDomainRequest | Domain registration payload

// Register domain
DomainAPI.registerDomain(domain: domain, registerDomainRequest: registerDomainRequest) { (response, error) in
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
 **registerDomainRequest** | [**RegisterDomainRequest**](RegisterDomainRequest.md) | Domain registration payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renewDomain**
```swift
    open class func renewDomain(domain: String, renewDomainRequest: RenewDomainRequest? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Renew domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let renewDomainRequest = renewDomain_request(period: 123) // RenewDomainRequest | Domain renewal payload (optional)

// Renew domain
DomainAPI.renewDomain(domain: domain, renewDomainRequest: renewDomainRequest) { (response, error) in
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
 **renewDomainRequest** | [**RenewDomainRequest**](RenewDomainRequest.md) | Domain renewal payload | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **whoisDomain**
```swift
    open class func whoisDomain(domain: String, cname: String? = nil, currencyId: String? = nil, completion: @escaping (_ data: WhoisDomain200Response?, _ error: Error?) -> Void)
```

Check domain WHOIS availability and prices

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let domain = "domain_example" // String | Domain name
let cname = "cname_example" // String | Customer name for price context (optional)
let currencyId = "currencyId_example" // String | Currency ID (optional)

// Check domain WHOIS availability and prices
DomainAPI.whoisDomain(domain: domain, cname: cname, currencyId: currencyId) { (response, error) in
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
 **cname** | **String** | Customer name for price context | [optional] 
 **currencyId** | **String** | Currency ID | [optional] 

### Return type

[**WhoisDomain200Response**](WhoisDomain200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

