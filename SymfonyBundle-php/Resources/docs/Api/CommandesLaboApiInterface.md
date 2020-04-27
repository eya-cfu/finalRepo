# Swagger\Server\Api\CommandesLaboApiInterface

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addcommandeLabo**](CommandesLaboApiInterface.md#addcommandeLabo) | **POST** /commandesLabo | Add a new commandesLabo
[**getCommandesLabo**](CommandesLaboApiInterface.md#getCommandesLabo) | **GET** /commandesLabo | get commandesLabo


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.commandesLabo:
        class: Acme\MyBundle\Api\CommandesLaboApi
        tags:
            - { name: "swagger_server.api", api: "commandesLabo" }
    # ...
```

## **addcommandeLabo**
> addcommandeLabo($body)

Add a new commandesLabo

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesLaboApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesLaboApiInterface;

class CommandesLaboApi implements CommandesLaboApiInterface
{

    // ...

    /**
     * Implementation of CommandesLaboApiInterface#addcommandeLabo
     */
    public function addcommandeLabo(CommandesLabo $body)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Swagger\Server\Model\CommandesLabo**](../Model/CommandesLabo.md)| commandeLabo object that needs to be added |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getCommandesLabo**
> Swagger\Server\Model\CommandesLabo getCommandesLabo()

get commandesLabo

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/CommandesLaboApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\CommandesLaboApiInterface;

class CommandesLaboApi implements CommandesLaboApiInterface
{

    // ...

    /**
     * Implementation of CommandesLaboApiInterface#getCommandesLabo
     */
    public function getCommandesLabo()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\CommandesLabo**](../Model/CommandesLabo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

