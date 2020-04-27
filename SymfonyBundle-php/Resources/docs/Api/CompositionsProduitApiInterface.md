# Swagger\Server\Api\CompositionsProduitApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCompositionProduit**](CompositionsProduitApiInterface.md#addCompositionProduit) | **POST** /compositionsProduit | create new CompositionProduit
[**deleteCompositionByProduitAndComposant**](CompositionsProduitApiInterface.md#deleteCompositionByProduitAndComposant) | **DELETE** /compositionsProduit/findByProduitAndComposant | Deletes a compositionProduit by codeProduit and idComposant
[**deleteCompositionsProduitById**](CompositionsProduitApiInterface.md#deleteCompositionsProduitById) | **DELETE** /compositionsProduit/{idComposition} | Deletes a compositionProduit by its ID
[**getCompositionsProduit**](CompositionsProduitApiInterface.md#getCompositionsProduit) | **GET** /compositionsProduit | get compositionsProduit


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.compositionsProduit:
        class: Acme\MyBundle\Api\CompositionsProduitApi
        tags:
            - { name: "swagger_server.api", api: "compositionsProduit" }
    # ...
```

## **addCompositionProduit**
> addCompositionProduit($body)

create new CompositionProduit

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CompositionsProduitApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CompositionsProduitApiInterface;

class CompositionsProduitApi implements CompositionsProduitApiInterface
{

    // ...

    /**
     * Implementation of CompositionsProduitApiInterface#addCompositionProduit
     */
    public function addCompositionProduit(CompositionsProduit $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\CompositionsProduit**](../Model/CompositionsProduit.md)| CompositionsProduit object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteCompositionByProduitAndComposant**
> deleteCompositionByProduitAndComposant($codeProduit, $idComposant)

Deletes a compositionProduit by codeProduit and idComposant

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CompositionsProduitApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CompositionsProduitApiInterface;

class CompositionsProduitApi implements CompositionsProduitApiInterface
{

    // ...

    /**
     * Implementation of CompositionsProduitApiInterface#deleteCompositionByProduitAndComposant
     */
    public function deleteCompositionByProduitAndComposant($codeProduit, $idComposant)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeProduit** | **int**|  |
 **idComposant** | **string**|  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteCompositionsProduitById**
> deleteCompositionsProduitById($idComposition)

Deletes a compositionProduit by its ID

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CompositionsProduitApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CompositionsProduitApiInterface;

class CompositionsProduitApi implements CompositionsProduitApiInterface
{

    // ...

    /**
     * Implementation of CompositionsProduitApiInterface#deleteCompositionsProduitById
     */
    public function deleteCompositionsProduitById($idComposition)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idComposition** | **int**| CompositionProduit Id to delete |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getCompositionsProduit**
> Swagger\Server\Model\CompositionsProduit getCompositionsProduit()

get compositionsProduit

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CompositionsProduitApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CompositionsProduitApiInterface;

class CompositionsProduitApi implements CompositionsProduitApiInterface
{

    // ...

    /**
     * Implementation of CompositionsProduitApiInterface#getCompositionsProduit
     */
    public function getCompositionsProduit()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\CompositionsProduit**](../Model/CompositionsProduit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

