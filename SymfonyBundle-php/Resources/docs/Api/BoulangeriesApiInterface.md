# Swagger\Server\Api\BoulangeriesApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBoulangerie**](BoulangeriesApiInterface.md#addBoulangerie) | **POST** /boulangeries | Add a new boulangerie
[**deleteBoulangerie**](BoulangeriesApiInterface.md#deleteBoulangerie) | **DELETE** /boulangeries/ById/{idBoulangerie} | deletes Boulangerie by id
[**getBoulangerieById**](BoulangeriesApiInterface.md#getBoulangerieById) | **GET** /boulangeries/ById/{idBoulangerie} | returns one Boulangerie by ID
[**getBoulangerieByMatricule**](BoulangeriesApiInterface.md#getBoulangerieByMatricule) | **GET** /boulangeries/{matricule} | returns one Boulangerie by Matricule of Responsable
[**getBoulangeries**](BoulangeriesApiInterface.md#getBoulangeries) | **GET** /boulangeries | get all boulangeries
[**updateAndReplaceBoulangerie**](BoulangeriesApiInterface.md#updateAndReplaceBoulangerie) | **PUT** /boulangeries/ById/{idBoulangerie} | replaces Boulangerie by Updated version


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.boulangeries:
        class: Acme\MyBundle\Api\BoulangeriesApi
        tags:
            - { name: "swagger_server.api", api: "boulangeries" }
    # ...
```

## **addBoulangerie**
> addBoulangerie($body)

Add a new boulangerie

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BoulangeriesApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BoulangeriesApiInterface;

class BoulangeriesApi implements BoulangeriesApiInterface
{

    // ...

    /**
     * Implementation of BoulangeriesApiInterface#addBoulangerie
     */
    public function addBoulangerie(Boulangeries $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\Boulangeries**](../Model/Boulangeries.md)| boulangerie object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteBoulangerie**
> deleteBoulangerie($idBoulangerie)

deletes Boulangerie by id

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BoulangeriesApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BoulangeriesApiInterface;

class BoulangeriesApi implements BoulangeriesApiInterface
{

    // ...

    /**
     * Implementation of BoulangeriesApiInterface#deleteBoulangerie
     */
    public function deleteBoulangerie($idBoulangerie)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idBoulangerie** | **int**|  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getBoulangerieById**
> Swagger\Server\Model\Boulangeries getBoulangerieById($idBoulangerie)

returns one Boulangerie by ID

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BoulangeriesApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BoulangeriesApiInterface;

class BoulangeriesApi implements BoulangeriesApiInterface
{

    // ...

    /**
     * Implementation of BoulangeriesApiInterface#getBoulangerieById
     */
    public function getBoulangerieById($idBoulangerie)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idBoulangerie** | **int**|  |

### Return type

[**Swagger\Server\Model\Boulangeries**](../Model/Boulangeries.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getBoulangerieByMatricule**
> Swagger\Server\Model\Boulangeries getBoulangerieByMatricule($matricule)

returns one Boulangerie by Matricule of Responsable

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BoulangeriesApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BoulangeriesApiInterface;

class BoulangeriesApi implements BoulangeriesApiInterface
{

    // ...

    /**
     * Implementation of BoulangeriesApiInterface#getBoulangerieByMatricule
     */
    public function getBoulangerieByMatricule($matricule)
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

[**Swagger\Server\Model\Boulangeries**](../Model/Boulangeries.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getBoulangeries**
> Swagger\Server\Model\InlineResponse2001 getBoulangeries()

get all boulangeries

returns Boulangeries filetered collection

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BoulangeriesApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BoulangeriesApiInterface;

class BoulangeriesApi implements BoulangeriesApiInterface
{

    // ...

    /**
     * Implementation of BoulangeriesApiInterface#getBoulangeries
     */
    public function getBoulangeries()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\InlineResponse2001**](../Model/InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **updateAndReplaceBoulangerie**
> updateAndReplaceBoulangerie($idBoulangerie, $body)

replaces Boulangerie by Updated version

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BoulangeriesApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BoulangeriesApiInterface;

class BoulangeriesApi implements BoulangeriesApiInterface
{

    // ...

    /**
     * Implementation of BoulangeriesApiInterface#updateAndReplaceBoulangerie
     */
    public function updateAndReplaceBoulangerie($idBoulangerie, Boulangeries $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idBoulangerie** | **int**|  |
 **body** | [**Swagger\Server\Model\Boulangeries**](../Model/Boulangeries.md)| updated boulangerie object |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

