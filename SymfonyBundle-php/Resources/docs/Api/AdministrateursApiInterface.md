# Swagger\Server\Api\AdministrateursApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAdmin**](AdministrateursApiInterface.md#addAdmin) | **POST** /adminstrateurs | add a new Admin
[**changeAdminPw**](AdministrateursApiInterface.md#changeAdminPw) | **PATCH** /administrateurs/{loginAdmin} | changing Admin&#39;s password
[**deleteAdminbyLogin**](AdministrateursApiInterface.md#deleteAdminbyLogin) | **DELETE** /administrateurs/{loginAdmin} | Deletes an Admin by login
[**getAdminById**](AdministrateursApiInterface.md#getAdminById) | **GET** /administrateurs/{loginAdmin} | get Admin by Id
[**getAdministrateurs**](AdministrateursApiInterface.md#getAdministrateurs) | **GET** /adminstrateurs | get detailsCommandesBL by Id


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.administrateurs:
        class: Acme\MyBundle\Api\AdministrateursApi
        tags:
            - { name: "swagger_server.api", api: "administrateurs" }
    # ...
```

## **addAdmin**
> addAdmin($body)

add a new Admin

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/AdministrateursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\AdministrateursApiInterface;

class AdministrateursApi implements AdministrateursApiInterface
{

    // ...

    /**
     * Implementation of AdministrateursApiInterface#addAdmin
     */
    public function addAdmin(Administrateurs $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\Administrateurs**](../Model/Administrateurs.md)| Adminstrateur object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **changeAdminPw**
> changeAdminPw($loginAdmin, $passwordAdmin)

changing Admin's password

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/AdministrateursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\AdministrateursApiInterface;

class AdministrateursApi implements AdministrateursApiInterface
{

    // ...

    /**
     * Implementation of AdministrateursApiInterface#changeAdminPw
     */
    public function changeAdminPw($loginAdmin, $passwordAdmin)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginAdmin** | **string**|  |
 **passwordAdmin** | **string**|  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteAdminbyLogin**
> deleteAdminbyLogin($loginAdmin)

Deletes an Admin by login

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/AdministrateursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\AdministrateursApiInterface;

class AdministrateursApi implements AdministrateursApiInterface
{

    // ...

    /**
     * Implementation of AdministrateursApiInterface#deleteAdminbyLogin
     */
    public function deleteAdminbyLogin($loginAdmin)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginAdmin** | **string**| login of Admin to delete |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getAdminById**
> Swagger\Server\Model\Administrateurs getAdminById($loginAdmin)

get Admin by Id

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/AdministrateursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\AdministrateursApiInterface;

class AdministrateursApi implements AdministrateursApiInterface
{

    // ...

    /**
     * Implementation of AdministrateursApiInterface#getAdminById
     */
    public function getAdminById($loginAdmin)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginAdmin** | **string**|  |

### Return type

[**Swagger\Server\Model\Administrateurs**](../Model/Administrateurs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getAdministrateurs**
> Swagger\Server\Model\Administrateurs getAdministrateurs()

get detailsCommandesBL by Id

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/AdministrateursApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\AdministrateursApiInterface;

class AdministrateursApi implements AdministrateursApiInterface
{

    // ...

    /**
     * Implementation of AdministrateursApiInterface#getAdministrateurs
     */
    public function getAdministrateurs()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\Administrateurs**](../Model/Administrateurs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

