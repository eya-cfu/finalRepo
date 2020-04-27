# Swagger\Server\Api\ProfilsApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProfil**](ProfilsApiInterface.md#addProfil) | **POST** /profils | Add a new profil to the system
[**deleteProfilByMatricule**](ProfilsApiInterface.md#deleteProfilByMatricule) | **DELETE** /profils/{matricule} | Deletes a profil
[**getProfilByLogin**](ProfilsApiInterface.md#getProfilByLogin) | **GET** /profils/Login/{login} | Find profil by Login
[**getProfilByMatricule**](ProfilsApiInterface.md#getProfilByMatricule) | **GET** /profils/{matricule} | gets a profil by matricule
[**getProfils**](ProfilsApiInterface.md#getProfils) | **GET** /profils | get all profils


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.profils:
        class: Acme\MyBundle\Api\ProfilsApi
        tags:
            - { name: "swagger_server.api", api: "profils" }
    # ...
```

## **addProfil**
> addProfil($body)

Add a new profil to the system

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProfilsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProfilsApiInterface;

class ProfilsApi implements ProfilsApiInterface
{

    // ...

    /**
     * Implementation of ProfilsApiInterface#addProfil
     */
    public function addProfil(Profils $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\Profils**](../Model/Profils.md)| profil object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteProfilByMatricule**
> deleteProfilByMatricule($matricule)

Deletes a profil

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProfilsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProfilsApiInterface;

class ProfilsApi implements ProfilsApiInterface
{

    // ...

    /**
     * Implementation of ProfilsApiInterface#deleteProfilByMatricule
     */
    public function deleteProfilByMatricule($matricule)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matricule** | **int**| Profil matricule to delete |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getProfilByLogin**
> Swagger\Server\Model\Produits getProfilByLogin($login)

Find profil by Login

Returns a single profil

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProfilsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProfilsApiInterface;

class ProfilsApi implements ProfilsApiInterface
{

    // ...

    /**
     * Implementation of ProfilsApiInterface#getProfilByLogin
     */
    public function getProfilByLogin($login)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **string**| login of profil to return |

### Return type

[**Swagger\Server\Model\Produits**](../Model/Produits.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getProfilByMatricule**
> Swagger\Server\Model\Profils getProfilByMatricule($matricule)

gets a profil by matricule

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProfilsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProfilsApiInterface;

class ProfilsApi implements ProfilsApiInterface
{

    // ...

    /**
     * Implementation of ProfilsApiInterface#getProfilByMatricule
     */
    public function getProfilByMatricule($matricule)
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

[**Swagger\Server\Model\Profils**](../Model/Profils.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getProfils**
> Swagger\Server\Model\Profils getProfils()

get all profils

returns all profils

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProfilsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProfilsApiInterface;

class ProfilsApi implements ProfilsApiInterface
{

    // ...

    /**
     * Implementation of ProfilsApiInterface#getProfils
     */
    public function getProfils()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\Profils**](../Model/Profils.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

