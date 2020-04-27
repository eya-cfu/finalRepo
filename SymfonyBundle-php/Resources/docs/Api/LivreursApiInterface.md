# Swagger\Server\Api\LivreursApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addLivreur**](LivreursApiInterface.md#addLivreur) | **POST** /livreurs | Add a new livreur
[**deleteLivreurbyMatricule**](LivreursApiInterface.md#deleteLivreurbyMatricule) | **DELETE** /livreurs/{matricule} | Deletes a livreur by matricule
[**getLivreurs**](LivreursApiInterface.md#getLivreurs) | **GET** /livreurs | get all livreurs
[**getLivreursByMatricule**](LivreursApiInterface.md#getLivreursByMatricule) | **GET** /livreurs/{matricule} | 
[**updateLivreur**](LivreursApiInterface.md#updateLivreur) | **PUT** /livreurs/{matricule} | 


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.livreurs:
        class: Acme\MyBundle\Api\LivreursApi
        tags:
            - { name: "swagger_server.api", api: "livreurs" }
    # ...
```

## **addLivreur**
> addLivreur($body)

Add a new livreur

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/LivreursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\LivreursApiInterface;

class LivreursApi implements LivreursApiInterface
{

    // ...

    /**
     * Implementation of LivreursApiInterface#addLivreur
     */
    public function addLivreur(Livreurs $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\Livreurs**](../Model/Livreurs.md)| Livreur object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteLivreurbyMatricule**
> deleteLivreurbyMatricule($matricule)

Deletes a livreur by matricule

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/LivreursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\LivreursApiInterface;

class LivreursApi implements LivreursApiInterface
{

    // ...

    /**
     * Implementation of LivreursApiInterface#deleteLivreurbyMatricule
     */
    public function deleteLivreurbyMatricule($matricule)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matricule** | **int**| livreur matricule to delete |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getLivreurs**
> Swagger\Server\Model\InlineResponse200 getLivreurs()

get all livreurs

returns all livreurs as a filtered collection

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/LivreursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\LivreursApiInterface;

class LivreursApi implements LivreursApiInterface
{

    // ...

    /**
     * Implementation of LivreursApiInterface#getLivreurs
     */
    public function getLivreurs()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getLivreursByMatricule**
> Swagger\Server\Model\Livreurs getLivreursByMatricule($matricule)



returns Livreur by Matricule

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/LivreursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\LivreursApiInterface;

class LivreursApi implements LivreursApiInterface
{

    // ...

    /**
     * Implementation of LivreursApiInterface#getLivreursByMatricule
     */
    public function getLivreursByMatricule($matricule)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matricule** | **int**|  |

### Return type

[**Swagger\Server\Model\Livreurs**](../Model/Livreurs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **updateLivreur**
> updateLivreur($matricule, $body)



updating Livreur with a new Livreur object

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/LivreursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\LivreursApiInterface;

class LivreursApi implements LivreursApiInterface
{

    // ...

    /**
     * Implementation of LivreursApiInterface#updateLivreur
     */
    public function updateLivreur($matricule, Livreurs $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matricule** | **int**|  |
 **body** | [**Swagger\Server\Model\Livreurs**](../Model/Livreurs.md)| The updated livreur version |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

