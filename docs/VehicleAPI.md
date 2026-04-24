# VehicleAPI

All URIs are relative to *https://setup.platon.sk/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVehicleEvent**](VehicleAPI.md#createvehicleevent) | **POST** /vehicle/events | Create vehicle event without receipt image
[**deleteVehicleEvent**](VehicleAPI.md#deletevehicleevent) | **DELETE** /vehicle/events/{eventId} | Delete vehicle event
[**finalizeVehicleEvent**](VehicleAPI.md#finalizevehicleevent) | **POST** /vehicle/events/{eventId}/finalize | Finalize vehicle event draft
[**getVehicleEvent**](VehicleAPI.md#getvehicleevent) | **GET** /vehicle/events/{eventId} | Get vehicle event detail
[**getVehicleEventImage**](VehicleAPI.md#getvehicleeventimage) | **GET** /vehicle/events/{eventId}/image | Get event image or thumbnail
[**listVehicleCurrencies**](VehicleAPI.md#listvehiclecurrencies) | **GET** /vehicle/currencies | List currencies for vehicle events
[**listVehicleEvents**](VehicleAPI.md#listvehicleevents) | **GET** /vehicle/events | List vehicle events for the authenticated driver
[**listVehicleVehicles**](VehicleAPI.md#listvehiclevehicles) | **GET** /vehicle/vehicles | List vehicles available to the authenticated driver
[**rescanVehicleEventImage**](VehicleAPI.md#rescanvehicleeventimage) | **POST** /vehicle/events/{eventId}/image | Replace event image and rescan event data
[**setPreferredVehicle**](VehicleAPI.md#setpreferredvehicle) | **PATCH** /vehicle/preferred-vehicle | Set or clear preferred vehicle
[**uploadVehicleReceiptImage**](VehicleAPI.md#uploadvehiclereceiptimage) | **POST** /vehicle/events/receipt-image | Upload receipt image and create processing event draft


# **createVehicleEvent**
```swift
    open class func createVehicleEvent(createVehicleEventRequest: CreateVehicleEventRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Create vehicle event without receipt image

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let createVehicleEventRequest = createVehicleEvent_request(eventType: "eventType_example", datetimeLocal: "datetimeLocal_example", timezone: "timezone_example", location: finalizeVehicleEvent_request_location(addressText: "addressText_example", lat: 123, lon: 123, placeName: "placeName_example"), vehicleId: "vehicleId_example", purpose: "purpose_example", notes: "notes_example", odometer: 123, money: finalizeVehicleEvent_request_money(total: 123, currency: "currency_example"), fueling: finalizeVehicleEvent_request_fueling(fuelingNo: 123, fuelType: "fuelType_example", volume: 123, unit: "unit_example")) // CreateVehicleEventRequest | Vehicle event create payload

// Create vehicle event without receipt image
VehicleAPI.createVehicleEvent(createVehicleEventRequest: createVehicleEventRequest) { (response, error) in
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
 **createVehicleEventRequest** | [**CreateVehicleEventRequest**](CreateVehicleEventRequest.md) | Vehicle event create payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVehicleEvent**
```swift
    open class func deleteVehicleEvent(eventId: Int, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Delete vehicle event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let eventId = 987 // Int | Vehicle event ID

// Delete vehicle event
VehicleAPI.deleteVehicleEvent(eventId: eventId) { (response, error) in
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
 **eventId** | **Int** | Vehicle event ID | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finalizeVehicleEvent**
```swift
    open class func finalizeVehicleEvent(eventId: Int, finalizeVehicleEventRequest: FinalizeVehicleEventRequest, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Finalize vehicle event draft

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let eventId = 987 // Int | Vehicle event ID
let finalizeVehicleEventRequest = finalizeVehicleEvent_request(eventType: "eventType_example", datetimeLocal: "datetimeLocal_example", timezone: "timezone_example", location: finalizeVehicleEvent_request_location(addressText: "addressText_example", lat: 123, lon: 123, placeName: "placeName_example"), purpose: "purpose_example", notes: "notes_example", odometer: 123, money: finalizeVehicleEvent_request_money(total: 123, currency: "currency_example"), fueling: finalizeVehicleEvent_request_fueling(fuelingNo: 123, fuelType: "fuelType_example", volume: 123, unit: "unit_example")) // FinalizeVehicleEventRequest | Vehicle event finalize payload

// Finalize vehicle event draft
VehicleAPI.finalizeVehicleEvent(eventId: eventId, finalizeVehicleEventRequest: finalizeVehicleEventRequest) { (response, error) in
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
 **eventId** | **Int** | Vehicle event ID | 
 **finalizeVehicleEventRequest** | [**FinalizeVehicleEventRequest**](FinalizeVehicleEventRequest.md) | Vehicle event finalize payload | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVehicleEvent**
```swift
    open class func getVehicleEvent(eventId: Int, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Get vehicle event detail

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let eventId = 987 // Int | Vehicle event ID

// Get vehicle event detail
VehicleAPI.getVehicleEvent(eventId: eventId) { (response, error) in
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
 **eventId** | **Int** | Vehicle event ID | 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVehicleEventImage**
```swift
    open class func getVehicleEventImage(eventId: Int, size: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Get event image or thumbnail

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let eventId = 987 // Int | Vehicle event ID
let size = "size_example" // String | Image size variant: thumb, thumbnail or small for thumbnail response (optional)

// Get event image or thumbnail
VehicleAPI.getVehicleEventImage(eventId: eventId, size: size) { (response, error) in
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
 **eventId** | **Int** | Vehicle event ID | 
 **size** | **String** | Image size variant: thumb, thumbnail or small for thumbnail response | [optional] 

### Return type

**URL**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVehicleCurrencies**
```swift
    open class func listVehicleCurrencies(completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

List currencies for vehicle events

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK


// List currencies for vehicle events
VehicleAPI.listVehicleCurrencies() { (response, error) in
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

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVehicleEvents**
```swift
    open class func listVehicleEvents(since: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

List vehicle events for the authenticated driver

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let since = "since_example" // String | Return events with event datetime greater than or equal to the provided local datetime (optional)

// List vehicle events for the authenticated driver
VehicleAPI.listVehicleEvents(since: since) { (response, error) in
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
 **since** | **String** | Return events with event datetime greater than or equal to the provided local datetime | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVehicleVehicles**
```swift
    open class func listVehicleVehicles(completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

List vehicles available to the authenticated driver

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK


// List vehicles available to the authenticated driver
VehicleAPI.listVehicleVehicles() { (response, error) in
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

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rescanVehicleEventImage**
```swift
    open class func rescanVehicleEventImage(eventId: Int, image: URL, timezone: String? = nil, eventType: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Replace event image and rescan event data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let eventId = 987 // Int | Vehicle event ID
let image = URL(string: "https://example.com")! // URL | 
let timezone = "timezone_example" // String |  (optional)
let eventType = "eventType_example" // String |  (optional)

// Replace event image and rescan event data
VehicleAPI.rescanVehicleEventImage(eventId: eventId, image: image, timezone: timezone, eventType: eventType) { (response, error) in
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
 **eventId** | **Int** | Vehicle event ID | 
 **image** | **URL** |  | 
 **timezone** | **String** |  | [optional] 
 **eventType** | **String** |  | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPreferredVehicle**
```swift
    open class func setPreferredVehicle(setPreferredVehicleRequest: SetPreferredVehicleRequest? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Set or clear preferred vehicle

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let setPreferredVehicleRequest = setPreferredVehicle_request(vehicleId: "vehicleId_example") // SetPreferredVehicleRequest | Preferred vehicle payload (optional)

// Set or clear preferred vehicle
VehicleAPI.setPreferredVehicle(setPreferredVehicleRequest: setPreferredVehicleRequest) { (response, error) in
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
 **setPreferredVehicleRequest** | [**SetPreferredVehicleRequest**](SetPreferredVehicleRequest.md) | Preferred vehicle payload | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadVehicleReceiptImage**
```swift
    open class func uploadVehicleReceiptImage(image: URL, timezone: String, eventType: String? = nil, completion: @escaping (_ data: CreateDnsRecord200Response?, _ error: Error?) -> Void)
```

Upload receipt image and create processing event draft

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ControlPanelSDK

let image = URL(string: "https://example.com")! // URL | 
let timezone = "timezone_example" // String | 
let eventType = "eventType_example" // String |  (optional)

// Upload receipt image and create processing event draft
VehicleAPI.uploadVehicleReceiptImage(image: image, timezone: timezone, eventType: eventType) { (response, error) in
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
 **image** | **URL** |  | 
 **timezone** | **String** |  | 
 **eventType** | **String** |  | [optional] 

### Return type

[**CreateDnsRecord200Response**](CreateDnsRecord200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

