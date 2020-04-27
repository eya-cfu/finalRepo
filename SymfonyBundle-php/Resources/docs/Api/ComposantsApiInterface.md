# Swagger\Server\Api\ComposantsApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addComposant**](ComposantsApiInterface.md#addComposant) | **POST** /composants | add Composant Object
[**composantsIdComposantGet**](ComposantsApiInterface.md#composantsIdComposantGet) | **GET** /composants/{idComposant} | get composant by id
[**deleteComposantById**](ComposantsApiInterface.md#deleteComposantById) | **DELETE** /composants/{idComposant} | Deletes a composant by id
[**getComposants**](ComposantsApiInterface.md#getComposants) | **GET** /composants | get all composants


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.composants:
        class: Acme\MyBundle\Api\ComposantsApi
        tags:
            - { name: "swagger_server.api", api: "composants" }
    # ...
```

## **addComposant**
> addComposant($body)

add Composant Object

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ComposantsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ComposantsApiInterface;

class ComposantsApi implements ComposantsApiInterface
{

    // ...

    /**
     * Implementation of ComposantsApiInterface#addComposant
     */
    public function addComposant(Composants $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\Composants**](../Model/Composants.md)| Composant object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **composantsIdComposantGet**
> Swagger\Server\Model\Composants composantsIdComposantGet($idComposant)

get composant by id

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ComposantsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ComposantsApiInterface;

class ComposantsApi implements ComposantsApiInterface
{

    // ...

    /**
     * Implementation of ComposantsApiInterface#composantsIdComposantGet
     */
    public function composantsIdComposantGet($idComposant)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idComposant** | **string**|  |

### Return type

[**Swagger\Server\Model\Composants**](../Model/Composants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteComposantById**
> deleteComposantById($idComposant)

Deletes a composant by id

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ComposantsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ComposantsApiInterface;

class ComposantsApi implements ComposantsApiInterface
{

    // ...

    /**
     * Implementation of ComposantsApiInterface#deleteComposantById
     */
    public function deleteComposantById($idComposant)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idComposant** | **string**| composant id to delete |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getComposants**
> Swagger\Server\Model\Composants getComposants()

get all composants

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ComposantsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ComposantsApiInterface;

class ComposantsApi implements ComposantsApiInterface
{

    // ...

    /**
     * Implementation of ComposantsApiInterface#getComposants
     */
    public function getComposants()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\Composants**](../Model/Composants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

