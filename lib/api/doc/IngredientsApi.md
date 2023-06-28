# openapi.api.IngredientsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.88.16:7187*

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

final api_instance = IngredientsApi();
final ingredientDetailModel = IngredientDetailModel(); // IngredientDetailModel | 

try {
    final result = api_instance.createIngredient(ingredientDetailModel);
    print(result);
} catch (e) {
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

final api_instance = IngredientsApi();
final id = id_example; // String | 

try {
    api_instance.deleteIngredient(id);
} catch (e) {
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

final api_instance = IngredientsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getIngredientById(id);
    print(result);
} catch (e) {
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
> List<IngredientListModel> getIngredientsAll()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IngredientsApi();

try {
    final result = api_instance.getIngredientsAll();
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->getIngredientsAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<IngredientListModel>**](IngredientListModel.md)

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

final api_instance = IngredientsApi();
final ingredientDetailModel = IngredientDetailModel(); // IngredientDetailModel | 

try {
    final result = api_instance.updateIngredient(ingredientDetailModel);
    print(result);
} catch (e) {
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

