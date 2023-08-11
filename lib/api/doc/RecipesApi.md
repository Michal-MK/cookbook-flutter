# openapi.api.RecipesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://app-cookbook-maui-api.azurewebsites.net*

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

final api = Openapi().getRecipesApi();
final RecipeDetailModel recipeDetailModel = ; // RecipeDetailModel | 

try {
    final response = api.createRecipe(recipeDetailModel);
    print(response);
} catch on DioError (e) {
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

final api = Openapi().getRecipesApi();
final String id = id_example; // String | 

try {
    api.deleteRecipe(id);
} catch on DioError (e) {
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

final api = Openapi().getRecipesApi();
final String id = id_example; // String | 

try {
    final response = api.getRecipeById(id);
    print(response);
} catch on DioError (e) {
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
> BuiltList<RecipeListModel> getRecipesAll()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRecipesApi();

try {
    final response = api.getRecipesAll();
    print(response);
} catch on DioError (e) {
    print('Exception when calling RecipesApi->getRecipesAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;RecipeListModel&gt;**](RecipeListModel.md)

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

final api = Openapi().getRecipesApi();
final RecipeDetailModel recipeDetailModel = ; // RecipeDetailModel | 

try {
    final response = api.updateRecipe(recipeDetailModel);
    print(response);
} catch on DioError (e) {
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

