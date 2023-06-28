# openapi.api.ImagesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.88.16:7187*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createImage**](ImagesApi.md#createimage) | **POST** /api/images | 
[**deleteImage**](ImagesApi.md#deleteimage) | **DELETE** /api/images/{id} | 
[**getImageById**](ImagesApi.md#getimagebyid) | **GET** /api/images/{id} | 
[**updateImage**](ImagesApi.md#updateimage) | **PUT** /api/images | 


# **createImage**
> String createImage(imageModel)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ImagesApi();
final imageModel = ImageModel(); // ImageModel | 

try {
    final result = api_instance.createImage(imageModel);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->createImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageModel** | [**ImageModel**](ImageModel.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteImage**
> deleteImage(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ImagesApi();
final id = id_example; // String | 

try {
    api_instance.deleteImage(id);
} catch (e) {
    print('Exception when calling ImagesApi->deleteImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImageById**
> getImageById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ImagesApi();
final id = id_example; // String | 

try {
    api_instance.getImageById(id);
} catch (e) {
    print('Exception when calling ImagesApi->getImageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateImage**
> updateImage(imageModel)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ImagesApi();
final imageModel = ImageModel(); // ImageModel | 

try {
    api_instance.updateImage(imageModel);
} catch (e) {
    print('Exception when calling ImagesApi->updateImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageModel** | [**ImageModel**](ImageModel.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

