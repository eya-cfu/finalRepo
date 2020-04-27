# Swagger\Server\Api\ProduitsApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProduit**](ProduitsApiInterface.md#addProduit) | **POST** /produits | Add a new produit
[**deleteProduitByCodeProduit**](ProduitsApiInterface.md#deleteProduitByCodeProduit) | **DELETE** /produits/{codeProduit} | Deletes a produit by its code
[**getCompositionsOfProduit**](ProduitsApiInterface.md#getCompositionsOfProduit) | **GET** /produits/{codeProduit}/compositionsProduit | get compositons filtered collection with quantity for a certain produit
[**getProduitByCodeProduit**](ProduitsApiInterface.md#getProduitByCodeProduit) | **GET** /produits/{codeProduit} | get one produit
[**getProduits**](ProduitsApiInterface.md#getProduits) | **GET** /produits | get all produits
[**updateAndReplaceProduit**](ProduitsApiInterface.md#updateAndReplaceProduit) | **PUT** /produits/{codeProduit} | replaces Produit by Updated version


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.produits:
        class: Acme\MyBundle\Api\ProduitsApi
        tags:
            - { name: "swagger_server.api", api: "produits" }
    # ...
```

## **addProduit**
> addProduit($body)

Add a new produit

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProduitsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProduitsApiInterface;

class ProduitsApi implements ProduitsApiInterface
{

    // ...

    /**
     * Implementation of ProduitsApiInterface#addProduit
     */
    public function addProduit(Produits $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\Produits**](../Model/Produits.md)| Produit object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteProduitByCodeProduit**
> deleteProduitByCodeProduit($codeProduit)

Deletes a produit by its code

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProduitsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProduitsApiInterface;

class ProduitsApi implements ProduitsApiInterface
{

    // ...

    /**
     * Implementation of ProduitsApiInterface#deleteProduitByCodeProduit
     */
    public function deleteProduitByCodeProduit($codeProduit)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeProduit** | **int**| Produit code to delete |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getCompositionsOfProduit**
> Swagger\Server\Model\InlineResponse2005 getCompositionsOfProduit($codeProduit)

get compositons filtered collection with quantity for a certain produit

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProduitsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProduitsApiInterface;

class ProduitsApi implements ProduitsApiInterface
{

    // ...

    /**
     * Implementation of ProduitsApiInterface#getCompositionsOfProduit
     */
    public function getCompositionsOfProduit($codeProduit)
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

### Return type

[**Swagger\Server\Model\InlineResponse2005**](../Model/InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getProduitByCodeProduit**
> Swagger\Server\Model\Produits getProduitByCodeProduit($codeProduit)

get one produit

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProduitsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProduitsApiInterface;

class ProduitsApi implements ProduitsApiInterface
{

    // ...

    /**
     * Implementation of ProduitsApiInterface#getProduitByCodeProduit
     */
    public function getProduitByCodeProduit($codeProduit)
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

### Return type

[**Swagger\Server\Model\Produits**](../Model/Produits.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getProduits**
> Swagger\Server\Model\Produits getProduits()

get all produits

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProduitsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProduitsApiInterface;

class ProduitsApi implements ProduitsApiInterface
{

    // ...

    /**
     * Implementation of ProduitsApiInterface#getProduits
     */
    public function getProduits()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\Produits**](../Model/Produits.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **updateAndReplaceProduit**
> updateAndReplaceProduit($codeProduit, $body)

replaces Produit by Updated version

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/ProduitsApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\ProduitsApiInterface;

class ProduitsApi implements ProduitsApiInterface
{

    // ...

    /**
     * Implementation of ProduitsApiInterface#updateAndReplaceProduit
     */
    public function updateAndReplaceProduit($codeProduit, Produits $body)
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
 **body** | [**Swagger\Server\Model\Produits**](../Model/Produits.md)| produit object to replace the one its |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

