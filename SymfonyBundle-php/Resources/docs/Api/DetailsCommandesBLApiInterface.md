# Swagger\Server\Api\DetailsCommandesBLApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDetailsCommandeBL**](DetailsCommandesBLApiInterface.md#addDetailsCommandeBL) | **POST** /detailsCommandesBL | add detailsCommandesBL
[**deleteDetailsCommandesBLById**](DetailsCommandesBLApiInterface.md#deleteDetailsCommandesBLById) | **DELETE** /detailsCommandesBL/{idDetail} | Deletes a detail by ID
[**getDetailByProduitAndDate**](DetailsCommandesBLApiInterface.md#getDetailByProduitAndDate) | **GET** /detailsCommandesBL/findByProduitAndDate | get detailsCommandesBL by codeProduit and dueDate
[**getdetailsCommandesBL**](DetailsCommandesBLApiInterface.md#getdetailsCommandesBL) | **GET** /detailsCommandesBL | get all details for all commandes BL
[**patchDetailQuantity**](DetailsCommandesBLApiInterface.md#patchDetailQuantity) | **PATCH** /detailsCommandesBL/{idDetail} | patching the quantity of a detailsCommandesBL


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.detailsCommandesBL:
        class: Acme\MyBundle\Api\DetailsCommandesBLApi
        tags:
            - { name: "swagger_server.api", api: "detailsCommandesBL" }
    # ...
```

## **addDetailsCommandeBL**
> addDetailsCommandeBL($body)

add detailsCommandesBL

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DetailsCommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\DetailsCommandesBLApiInterface;

class DetailsCommandesBLApi implements DetailsCommandesBLApiInterface
{

    // ...

    /**
     * Implementation of DetailsCommandesBLApiInterface#addDetailsCommandeBL
     */
    public function addDetailsCommandeBL(DetailsCommandesBL $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\DetailsCommandesBL**](../Model/DetailsCommandesBL.md)| DetailsCommandeBl object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteDetailsCommandesBLById**
> deleteDetailsCommandesBLById($idDetail)

Deletes a detail by ID

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DetailsCommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\DetailsCommandesBLApiInterface;

class DetailsCommandesBLApi implements DetailsCommandesBLApiInterface
{

    // ...

    /**
     * Implementation of DetailsCommandesBLApiInterface#deleteDetailsCommandesBLById
     */
    public function deleteDetailsCommandesBLById($idDetail)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idDetail** | **int**| detail Id to delete |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getDetailByProduitAndDate**
> Swagger\Server\Model\DetailsCommandesBL getDetailByProduitAndDate($codeProduit, $dueDate)

get detailsCommandesBL by codeProduit and dueDate

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DetailsCommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\DetailsCommandesBLApiInterface;

class DetailsCommandesBLApi implements DetailsCommandesBLApiInterface
{

    // ...

    /**
     * Implementation of DetailsCommandesBLApiInterface#getDetailByProduitAndDate
     */
    public function getDetailByProduitAndDate($codeProduit, \DateTime $dueDate)
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
 **dueDate** | **\DateTime**|  |

### Return type

[**Swagger\Server\Model\DetailsCommandesBL**](../Model/DetailsCommandesBL.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getdetailsCommandesBL**
> Swagger\Server\Model\DetailsCommandesBL getdetailsCommandesBL()

get all details for all commandes BL

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DetailsCommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\DetailsCommandesBLApiInterface;

class DetailsCommandesBLApi implements DetailsCommandesBLApiInterface
{

    // ...

    /**
     * Implementation of DetailsCommandesBLApiInterface#getdetailsCommandesBL
     */
    public function getdetailsCommandesBL()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\DetailsCommandesBL**](../Model/DetailsCommandesBL.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **patchDetailQuantity**
> patchDetailQuantity($idDetail, $quantiteProd)

patching the quantity of a detailsCommandesBL

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DetailsCommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\DetailsCommandesBLApiInterface;

class DetailsCommandesBLApi implements DetailsCommandesBLApiInterface
{

    // ...

    /**
     * Implementation of DetailsCommandesBLApiInterface#patchDetailQuantity
     */
    public function patchDetailQuantity($idDetail, $quantiteProd = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idDetail** | **int**|  |
 **quantiteProd** | **int**|  | [optional]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

