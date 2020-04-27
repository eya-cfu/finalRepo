# Swagger\Server\Api\CommandesBLApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCommandeBL**](CommandesBLApiInterface.md#addCommandeBL) | **POST** /commandesBL | create an orderBL
[**commandesBLIdCommandeBLGet**](CommandesBLApiInterface.md#commandesBLIdCommandeBLGet) | **GET** /commandesBL/{idCommandeBL} | returns a commandeBL
[**deleteCommandeBLById**](CommandesBLApiInterface.md#deleteCommandeBLById) | **DELETE** /commandesBL/{idCommandeBL} | Deletes a commandeBL by Id
[**getCmdsByEtat**](CommandesBLApiInterface.md#getCmdsByEtat) | **GET** /commandesBL/getCmdsByEtat | returns commandes filtered collection for BL
[**getCmdsByEtatAndBoulangerieID**](CommandesBLApiInterface.md#getCmdsByEtatAndBoulangerieID) | **GET** /commandesBL/getCmdsbyEtatAndBoulangerieID | get Commandes collection of the Boulangerie by Etat
[**getCmdsByEtatAndmatricule**](CommandesBLApiInterface.md#getCmdsByEtatAndmatricule) | **GET** /commandesBL/getCmdsByEtatAndMatricule | gets commandes collection by matricule for livreur
[**getCmdsForLab**](CommandesBLApiInterface.md#getCmdsForLab) | **GET** /commandesBL/getCmdsForLab | gets commandes filtered for laboratoire
[**getDetailsByCommandeBL**](CommandesBLApiInterface.md#getDetailsByCommandeBL) | **GET** /commandesBL/{idCommandeBL}/detailsCmdBL | 
[**getcommandesBL**](CommandesBLApiInterface.md#getcommandesBL) | **GET** /commandesBL | 
[**patchCmdBlEtat**](CommandesBLApiInterface.md#patchCmdBlEtat) | **PATCH** /commandesBL/{idCommandeBL} | patching etat of a commandeBL objet
[**patchLivreur**](CommandesBLApiInterface.md#patchLivreur) | **PATCH** /commandesBL/{idCommandeBL}/identifyLivreur | putting in the matricule of Livreur


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.commandesBL:
        class: Acme\MyBundle\Api\CommandesBLApi
        tags:
            - { name: "swagger_server.api", api: "commandesBL" }
    # ...
```

## **addCommandeBL**
> addCommandeBL($body)

create an orderBL

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#addCommandeBL
     */
    public function addCommandeBL(CommandesBL $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\CommandesBL**](../Model/CommandesBL.md)| CommandeBl object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **commandesBLIdCommandeBLGet**
> Swagger\Server\Model\CommandesBL commandesBLIdCommandeBLGet($idCommandeBL)

returns a commandeBL

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#commandesBLIdCommandeBLGet
     */
    public function commandesBLIdCommandeBLGet($idCommandeBL)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommandeBL** | **int**|  |

### Return type

[**Swagger\Server\Model\CommandesBL**](../Model/CommandesBL.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **deleteCommandeBLById**
> deleteCommandeBLById($idCommandeBL)

Deletes a commandeBL by Id

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#deleteCommandeBLById
     */
    public function deleteCommandeBLById($idCommandeBL)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommandeBL** | **string**| CommandeID  to delete |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getCmdsByEtat**
> Swagger\Server\Model\InlineResponse2002 getCmdsByEtat($etat)

returns commandes filtered collection for BL

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#getCmdsByEtat
     */
    public function getCmdsByEtat($etat = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **etat** | **string**|  | [optional]

### Return type

[**Swagger\Server\Model\InlineResponse2002**](../Model/InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getCmdsByEtatAndBoulangerieID**
> Swagger\Server\Model\CommandesBL getCmdsByEtatAndBoulangerieID($etat, $idBoulangerie)

get Commandes collection of the Boulangerie by Etat

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#getCmdsByEtatAndBoulangerieID
     */
    public function getCmdsByEtatAndBoulangerieID($etat = null, $idBoulangerie = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **etat** | **string**|  | [optional]
 **idBoulangerie** | **int**|  | [optional]

### Return type

[**Swagger\Server\Model\CommandesBL**](../Model/CommandesBL.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getCmdsByEtatAndmatricule**
> Swagger\Server\Model\CommandesBL getCmdsByEtatAndmatricule($etat, $matricule)

gets commandes collection by matricule for livreur

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#getCmdsByEtatAndmatricule
     */
    public function getCmdsByEtatAndmatricule($etat = null, $matricule = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **etat** | **string**|  | [optional]
 **matricule** | **int**|  | [optional]

### Return type

[**Swagger\Server\Model\CommandesBL**](../Model/CommandesBL.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getCmdsForLab**
> Swagger\Server\Model\InlineResponse2003 getCmdsForLab($etat)

gets commandes filtered for laboratoire

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#getCmdsForLab
     */
    public function getCmdsForLab($etat = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **etat** | **string**|  | [optional]

### Return type

[**Swagger\Server\Model\InlineResponse2003**](../Model/InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getDetailsByCommandeBL**
> Swagger\Server\Model\InlineResponse2004 getDetailsByCommandeBL($idCommandeBL)



returns detailsCommandes filtered collection by idCommande

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#getDetailsByCommandeBL
     */
    public function getDetailsByCommandeBL($idCommandeBL)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommandeBL** | **int**|  |

### Return type

[**Swagger\Server\Model\InlineResponse2004**](../Model/InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getcommandesBL**
> Swagger\Server\Model\CommandesBL getcommandesBL()



returns all commandesBL

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#getcommandesBL
     */
    public function getcommandesBL()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\CommandesBL**](../Model/CommandesBL.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **patchCmdBlEtat**
> patchCmdBlEtat($idCommandeBL, $etat)

patching etat of a commandeBL objet

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#patchCmdBlEtat
     */
    public function patchCmdBlEtat($idCommandeBL, $etat = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommandeBL** | **int**|  |
 **etat** | **string**|  | [optional]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **patchLivreur**
> patchLivreur($idCommandeBL, $body)

putting in the matricule of Livreur

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesBLApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesBLApiInterface;

class CommandesBLApi implements CommandesBLApiInterface
{

    // ...

    /**
     * Implementation of CommandesBLApiInterface#patchLivreur
     */
    public function patchLivreur($idCommandeBL, $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCommandeBL** | **int**|  |
 **body** | **int**|  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

