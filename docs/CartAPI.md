# CartAPI

All URIs are relative to *https://setup.platon.sk/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkCartCoupon**](CartAPI.md#checkcartcoupon) | **POST** /cart/coupons/check | Check and apply cart coupon
[**createCartItem**](CartAPI.md#createcartitem) | **POST** /cart/items | Add item to cart
[**deleteCartItem**](CartAPI.md#deletecartitem) | **DELETE** /cart/items/{cartItemId} | Remove item from cart
[**getCartBillingAddress**](CartAPI.md#getcartbillingaddress) | **GET** /cart/billing-address | Get cart billing address
[**getCartCoupon**](CartAPI.md#getcartcoupon) | **GET** /cart/coupons/current | Get current cart coupon
[**getCartTotal**](CartAPI.md#getcarttotal) | **GET** /cart/total | Get cart total
[**listCartItems**](CartAPI.md#listcartitems) | **GET** /cart/items | List cart items
[**mergeCartItems**](CartAPI.md#mergecartitems) | **POST** /cart/items/merge | Merge anonymous cart items into current customer cart
[**updateCartItem**](CartAPI.md#updatecartitem) | **PATCH** /cart/items/{cartItemId} | Update cart item data
[**updateCartItemCount**](CartAPI.md#updatecartitemcount) | **PATCH** /cart/items/by-product/count | Update cart item count by product and domain


# **checkCartCoupon**
```swift
    open class func checkCartCoupon(checkCartCouponRequest: CheckCartCouponRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Check and apply cart coupon

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let checkCartCouponRequest = checkCartCoupon_request(couponCode: "couponCode_example", cname: "cname_example") // CheckCartCouponRequest | Cart coupon check payload

// Check and apply cart coupon
CartAPI.checkCartCoupon(checkCartCouponRequest: checkCartCouponRequest) { (response, error) in
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
 **checkCartCouponRequest** | [**CheckCartCouponRequest**](CheckCartCouponRequest.md) | Cart coupon check payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCartItem**
```swift
    open class func createCartItem(createCartItemRequest: CreateCartItemRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Add item to cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let createCartItemRequest = createCartItem_request(productName: "productName_example", cname: "cname_example", domain: "domain_example", itemCount: 123, currencyId: "currencyId_example", parameters: 123, processType: "processType_example", lang: "lang_example") // CreateCartItemRequest | Cart item add payload

// Add item to cart
CartAPI.createCartItem(createCartItemRequest: createCartItemRequest) { (response, error) in
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
 **createCartItemRequest** | [**CreateCartItemRequest**](CreateCartItemRequest.md) | Cart item add payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCartItem**
```swift
    open class func deleteCartItem(cartItemId: Int, cname: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Remove item from cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let cartItemId = 987 // Int | Cart item ID
let cname = "cname_example" // String | Customer name (optional)

// Remove item from cart
CartAPI.deleteCartItem(cartItemId: cartItemId, cname: cname) { (response, error) in
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
 **cartItemId** | **Int** | Cart item ID | 
 **cname** | **String** | Customer name | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCartBillingAddress**
```swift
    open class func getCartBillingAddress(cname: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Get cart billing address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let cname = "cname_example" // String | Customer name (optional)

// Get cart billing address
CartAPI.getCartBillingAddress(cname: cname) { (response, error) in
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
 **cname** | **String** | Customer name | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCartCoupon**
```swift
    open class func getCartCoupon(cname: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Get current cart coupon

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let cname = "cname_example" // String | Customer name (optional)

// Get current cart coupon
CartAPI.getCartCoupon(cname: cname) { (response, error) in
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
 **cname** | **String** | Customer name | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCartTotal**
```swift
    open class func getCartTotal(cname: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Get cart total

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let cname = "cname_example" // String | Customer name (optional)

// Get cart total
CartAPI.getCartTotal(cname: cname) { (response, error) in
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
 **cname** | **String** | Customer name | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCartItems**
```swift
    open class func listCartItems(cname: String? = nil, lang: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

List cart items

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let cname = "cname_example" // String | Customer name (optional)
let lang = "lang_example" // String | Response language (optional)

// List cart items
CartAPI.listCartItems(cname: cname, lang: lang) { (response, error) in
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
 **cname** | **String** | Customer name | [optional] 
 **lang** | **String** | Response language | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeCartItems**
```swift
    open class func mergeCartItems(mergeCartItemsRequest: MergeCartItemsRequest, completion: @escaping (_ data: MergeCartItems200Response?, _ error: Error?) -> Void)
```

Merge anonymous cart items into current customer cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let mergeCartItemsRequest = mergeCartItems_request(fromToken: "fromToken_example") // MergeCartItemsRequest | Anonymous cart merge payload

// Merge anonymous cart items into current customer cart
CartAPI.mergeCartItems(mergeCartItemsRequest: mergeCartItemsRequest) { (response, error) in
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
 **mergeCartItemsRequest** | [**MergeCartItemsRequest**](MergeCartItemsRequest.md) | Anonymous cart merge payload | 

### Return type

[**MergeCartItems200Response**](MergeCartItems200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCartItem**
```swift
    open class func updateCartItem(cartItemId: Int, updateCartItemRequest: UpdateCartItemRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Update cart item data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let cartItemId = 987 // Int | Cart item ID
let updateCartItemRequest = updateCartItem_request(data: updateCartItem_request_data(productName: "productName_example", productDetail: "productDetail_example", itemCount: 123, price: 123, productPrice: 123), cname: "cname_example") // UpdateCartItemRequest | Cart item update payload

// Update cart item data
CartAPI.updateCartItem(cartItemId: cartItemId, updateCartItemRequest: updateCartItemRequest) { (response, error) in
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
 **cartItemId** | **Int** | Cart item ID | 
 **updateCartItemRequest** | [**UpdateCartItemRequest**](UpdateCartItemRequest.md) | Cart item update payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCartItemCount**
```swift
    open class func updateCartItemCount(updateCartItemCountRequest: UpdateCartItemCountRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Update cart item count by product and domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let updateCartItemCountRequest = updateCartItemCount_request(productName: "productName_example", domain: "domain_example", count: 123, cname: "cname_example") // UpdateCartItemCountRequest | Cart item count update payload

// Update cart item count by product and domain
CartAPI.updateCartItemCount(updateCartItemCountRequest: updateCartItemCountRequest) { (response, error) in
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
 **updateCartItemCountRequest** | [**UpdateCartItemCountRequest**](UpdateCartItemCountRequest.md) | Cart item count update payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

