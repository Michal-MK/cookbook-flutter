# openapi.api.RecipesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.88.16:7187*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecipe**](RecipesApi.md#createrecipe) | **POST** /api/recipes | 
[**deleteRecipe**](RecipesApi.md#deleterecipe) | **DELETE** /api/recipes/{id} | 
[**getRecipeById**](RecipesApi.md#getrecipebyid) | **GET** /api/recipes/{id} | 
[**getRecipesAll**](RecipesApi.md#getrecipesall) | **GET** /api/recipes | 
[**updateRecipe**](RecipesApi.md#updaterecipe) | **PUT** /api/recipes | 


# **createRecipe**
> String createRecipe(recipeDetailModel)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecipesApi();
final recipeDetailModel = RecipeDetailModel(); // RecipeDetailModel | 

try {
    final result = api_instance.createRecipe(recipeDetailModel);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->createRecipe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipeDetailModel** | [**RecipeDetailModel**](RecipeDetailModel.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRecipe**
> deleteRecipe(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecipesApi();
final id = id_example; // String | 

try {
    api_instance.deleteRecipe(id);
} catch (e) {
    print('Exception when calling RecipesApi->deleteRecipe: $e\n');
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

# **getRecipeById**
> RecipeDetailModel getRecipeById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecipesApi();
final id = id_example; // String | 

try {
    final result = api_instance.getRecipeById(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipeById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**RecipeDetailModel**](RecipeDetailModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipesAll**
> List<RecipeListModel> getRecipesAll()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecipesApi();

try {
    final result = api_instance.getRecipesAll();
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipesAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<RecipeListModel>**](RecipeListModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecipe**
> String updateRecipe(recipeDetailModel)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecipesApi();
final recipeDetailModel = RecipeDetailModel(); // RecipeDetailModel | 

try {
    final result = api_instance.updateRecipe(recipeDetailModel);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->updateRecipe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipeDetailModel** | [**RecipeDetailModel**](RecipeDetailModel.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

