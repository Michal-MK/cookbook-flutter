# openapi.api.IngredientsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://app-cookbook-maui-api.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIngredient**](IngredientsApi.md#createingredient) | **POST** /api/ingredients | 
[**deleteIngredient**](IngredientsApi.md#deleteingredient) | **DELETE** /api/ingredients/{id} | 
[**getIngredientById**](IngredientsApi.md#getingredientbyid) | **GET** /api/ingredients/{id} | 
[**getIngredientsAll**](IngredientsApi.md#getingredientsall) | **GET** /api/ingredients | 
[**updateIngredient**](IngredientsApi.md#updateingredient) | **PUT** /api/ingredients | 


# **createIngredient**
> String createIngredient(ingredientDetailModel)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIngredientsApi();
final IngredientDetailModel ingredientDetailModel = ; // IngredientDetailModel | 

try {
    final response = api.createIngredient(ingredientDetailModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IngredientsApi->createIngredient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientDetailModel** | [**IngredientDetailModel**](IngredientDetailModel.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIngredient**
> deleteIngredient(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIngredientsApi();
final String id = id_example; // String | 

try {
    api.deleteIngredient(id);
} catch on DioError (e) {
    print('Exception when calling IngredientsApi->deleteIngredient: $e\n');
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

# **getIngredientById**
> IngredientDetailModel getIngredientById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIngredientsApi();
final String id = id_example; // String | 

try {
    final response = api.getIngredientById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IngredientsApi->getIngredientById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**IngredientDetailModel**](IngredientDetailModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientsAll**
> BuiltList<IngredientListModel> getIngredientsAll()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIngredientsApi();

try {
    final response = api.getIngredientsAll();
    print(response);
} catch on DioError (e) {
    print('Exception when calling IngredientsApi->getIngredientsAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;IngredientListModel&gt;**](IngredientListModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIngredient**
> String updateIngredient(ingredientDetailModel)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIngredientsApi();
final IngredientDetailModel ingredientDetailModel = ; // IngredientDetailModel | 

try {
    final response = api.updateIngredient(ingredientDetailModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IngredientsApi->updateIngredient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientDetailModel** | [**IngredientDetailModel**](IngredientDetailModel.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

