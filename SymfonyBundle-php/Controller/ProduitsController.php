<?php

/**
 * ProduitsController
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Server\Controller
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * BoulangerieApi
 *
 * The Boulangerie finally debugged for use, hosting service might need to be adapted
 *
 * OpenAPI spec version: 1.0.0
 * Contact: leafyteam@notaRealCompany.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 *
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Server\Controller;

use \Exception;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Symfony\Component\Validator\Constraints as Assert;
use Swagger\Server\Api\ProduitsApiInterface;
use Swagger\Server\Model\InlineResponse2005;
use Swagger\Server\Model\Produits;

/**
 * ProduitsController Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Server\Controller
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class ProduitsController extends Controller
{

    /**
     * Operation addProduit
     *
     * Add a new produit
     *
     * @param Request $request The Symfony request to handle.
     * @return Response The Symfony response.
     */
    public function addProduitAction(Request $request)
    {
        // Make sure that the client is providing something that we can consume
        $consumes = ['application/json'];
        $inputFormat = $request->headers->has('Content-Type')?$request->headers->get('Content-Type'):$consumes[0];
        if (!in_array($inputFormat, $consumes)) {
            // We can't consume the content that the client is sending us
            return new Response('', 415);
        }

        // Figure out what data format to return to the client
        $produces = ['application/json'];
        // Figure out what the client accepts
        $clientAccepts = $request->headers->has('Accept')?$request->headers->get('Accept'):'*/*';
        $responseFormat = $this->getOutputFormat($clientAccepts, $produces);
        if ($responseFormat === null) {
            return new Response('', 406);
        }

        // Handle authentication

        // Read out all input parameter values into variables
        $body = $request->getContent();

        // Use the default value if no value was provided

        // Deserialize the input values that needs it
        $body = $this->deserialize($body, 'Swagger\Server\Model\Produits', $inputFormat);

        // Validate the input values
        $asserts = [];
        $asserts[] = new Assert\NotNull();
        $asserts[] = new Assert\Type("Swagger\Server\Model\Produits");
        $response = $this->validate($body, $asserts);
        if ($response instanceof Response) {
            return $response;
        }


        try {
            $handler = $this->getApiHandler();

            
            // Make the call to the business logic
            $responseCode = 204;
            $responseHeaders = [];
            $result = $handler->addProduit($body, $responseCode, $responseHeaders);

            // Find default response message
            $message = 'succesfully created';

            // Find a more specific message, if available
            switch ($responseCode) {
                case 201:
                    $message = 'succesfully created';
                    break;
                case 0:
                    $message = 'Unexpected error';
                    break;
            }

            return new Response(
                $result?$this->serialize($result, $responseFormat):'',
                $responseCode,
                array_merge(
                    $responseHeaders,
                    [
                        'Content-Type' => $responseFormat,
                        'X-Swagger-Message' => $message
                    ]
                )
            );
        } catch (Exception $fallthrough) {
            return $this->createErrorResponse(new HttpException(500, 'An unsuspected error occurred.', $fallthrough));
        }
    }

    /**
     * Operation deleteProduitByCodeProduit
     *
     * Deletes a produit by its code
     *
     * @param Request $request The Symfony request to handle.
     * @return Response The Symfony response.
     */
    public function deleteProduitByCodeProduitAction(Request $request, $codeProduit)
    {
        // Figure out what data format to return to the client
        $produces = ['application/json'];
        // Figure out what the client accepts
        $clientAccepts = $request->headers->has('Accept')?$request->headers->get('Accept'):'*/*';
        $responseFormat = $this->getOutputFormat($clientAccepts, $produces);
        if ($responseFormat === null) {
            return new Response('', 406);
        }

        // Handle authentication

        // Read out all input parameter values into variables

        // Use the default value if no value was provided

        // Deserialize the input values that needs it
        $codeProduit = $this->deserialize($codeProduit, 'int', 'string');

        // Validate the input values
        $asserts = [];
        $asserts[] = new Assert\NotNull();
        $asserts[] = new Assert\Type("int");
        $response = $this->validate($codeProduit, $asserts);
        if ($response instanceof Response) {
            return $response;
        }


        try {
            $handler = $this->getApiHandler();

            
            // Make the call to the business logic
            $responseCode = 204;
            $responseHeaders = [];
            $result = $handler->deleteProduitByCodeProduit($codeProduit, $responseCode, $responseHeaders);

            // Find default response message
            $message = 'successfully deleted';

            // Find a more specific message, if available
            switch ($responseCode) {
                case 200:
                    $message = 'successfully deleted';
                    break;
                case 400:
                    $message = 'Invalid ID supplied';
                    break;
                case 404:
                    $message = 'Produit not found';
                    break;
            }

            return new Response(
                $result?$this->serialize($result, $responseFormat):'',
                $responseCode,
                array_merge(
                    $responseHeaders,
                    [
                        'Content-Type' => $responseFormat,
                        'X-Swagger-Message' => $message
                    ]
                )
            );
        } catch (Exception $fallthrough) {
            return $this->createErrorResponse(new HttpException(500, 'An unsuspected error occurred.', $fallthrough));
        }
    }

    /**
     * Operation getCompositionsOfProduit
     *
     * get compositons filtered collection with quantity for a certain produit
     *
     * @param Request $request The Symfony request to handle.
     * @return Response The Symfony response.
     */
    public function getCompositionsOfProduitAction(Request $request, $codeProduit)
    {
        // Figure out what data format to return to the client
        $produces = ['application/json'];
        // Figure out what the client accepts
        $clientAccepts = $request->headers->has('Accept')?$request->headers->get('Accept'):'*/*';
        $responseFormat = $this->getOutputFormat($clientAccepts, $produces);
        if ($responseFormat === null) {
            return new Response('', 406);
        }

        // Handle authentication

        // Read out all input parameter values into variables

        // Use the default value if no value was provided

        // Deserialize the input values that needs it
        $codeProduit = $this->deserialize($codeProduit, 'int', 'string');

        // Validate the input values
        $asserts = [];
        $asserts[] = new Assert\NotNull();
        $asserts[] = new Assert\Type("int");
        $response = $this->validate($codeProduit, $asserts);
        if ($response instanceof Response) {
            return $response;
        }


        try {
            $handler = $this->getApiHandler();

            
            // Make the call to the business logic
            $responseCode = 200;
            $responseHeaders = [];
            $result = $handler->getCompositionsOfProduit($codeProduit, $responseCode, $responseHeaders);

            // Find default response message
            $message = 'success';

            // Find a more specific message, if available
            switch ($responseCode) {
                case 200:
                    $message = 'success';
                    break;
                case 204:
                    $message = 'No content.';
                    break;
                case 0:
                    $message = 'Unexpected error';
                    break;
            }

            return new Response(
                $result?$this->serialize($result, $responseFormat):'',
                $responseCode,
                array_merge(
                    $responseHeaders,
                    [
                        'Content-Type' => $responseFormat,
                        'X-Swagger-Message' => $message
                    ]
                )
            );
        } catch (Exception $fallthrough) {
            return $this->createErrorResponse(new HttpException(500, 'An unsuspected error occurred.', $fallthrough));
        }
    }

    /**
     * Operation getProduitByCodeProduit
     *
     * get one produit
     *
     * @param Request $request The Symfony request to handle.
     * @return Response The Symfony response.
     */
    public function getProduitByCodeProduitAction(Request $request, $codeProduit)
    {
        // Figure out what data format to return to the client
        $produces = ['application/json'];
        // Figure out what the client accepts
        $clientAccepts = $request->headers->has('Accept')?$request->headers->get('Accept'):'*/*';
        $responseFormat = $this->getOutputFormat($clientAccepts, $produces);
        if ($responseFormat === null) {
            return new Response('', 406);
        }

        // Handle authentication

        // Read out all input parameter values into variables

        // Use the default value if no value was provided

        // Deserialize the input values that needs it
        $codeProduit = $this->deserialize($codeProduit, 'int', 'string');

        // Validate the input values
        $asserts = [];
        $asserts[] = new Assert\NotNull();
        $asserts[] = new Assert\Type("int");
        $response = $this->validate($codeProduit, $asserts);
        if ($response instanceof Response) {
            return $response;
        }


        try {
            $handler = $this->getApiHandler();

            
            // Make the call to the business logic
            $responseCode = 200;
            $responseHeaders = [];
            $result = $handler->getProduitByCodeProduit($codeProduit, $responseCode, $responseHeaders);

            // Find default response message
            $message = 'success';

            // Find a more specific message, if available
            switch ($responseCode) {
                case 200:
                    $message = 'success';
                    break;
                case 404:
                    $message = 'Not found.';
                    break;
                case 0:
                    $message = 'Unexpected error';
                    break;
            }

            return new Response(
                $result?$this->serialize($result, $responseFormat):'',
                $responseCode,
                array_merge(
                    $responseHeaders,
                    [
                        'Content-Type' => $responseFormat,
                        'X-Swagger-Message' => $message
                    ]
                )
            );
        } catch (Exception $fallthrough) {
            return $this->createErrorResponse(new HttpException(500, 'An unsuspected error occurred.', $fallthrough));
        }
    }

    /**
     * Operation getProduits
     *
     * get all produits
     *
     * @param Request $request The Symfony request to handle.
     * @return Response The Symfony response.
     */
    public function getProduitsAction(Request $request)
    {
        // Figure out what data format to return to the client
        $produces = ['application/json'];
        // Figure out what the client accepts
        $clientAccepts = $request->headers->has('Accept')?$request->headers->get('Accept'):'*/*';
        $responseFormat = $this->getOutputFormat($clientAccepts, $produces);
        if ($responseFormat === null) {
            return new Response('', 406);
        }

        // Handle authentication

        // Read out all input parameter values into variables

        // Use the default value if no value was provided

        // Deserialize the input values that needs it

        // Validate the input values


        try {
            $handler = $this->getApiHandler();

            
            // Make the call to the business logic
            $responseCode = 200;
            $responseHeaders = [];
            $result = $handler->getProduits($responseCode, $responseHeaders);

            // Find default response message
            $message = 'success returning all';

            // Find a more specific message, if available
            switch ($responseCode) {
                case 200:
                    $message = 'success returning all';
                    break;
                case 204:
                    $message = 'No content.';
                    break;
                case 0:
                    $message = 'Unexpected error';
                    break;
            }

            return new Response(
                $result?$this->serialize($result, $responseFormat):'',
                $responseCode,
                array_merge(
                    $responseHeaders,
                    [
                        'Content-Type' => $responseFormat,
                        'X-Swagger-Message' => $message
                    ]
                )
            );
        } catch (Exception $fallthrough) {
            return $this->createErrorResponse(new HttpException(500, 'An unsuspected error occurred.', $fallthrough));
        }
    }

    /**
     * Operation updateAndReplaceProduit
     *
     * replaces Produit by Updated version
     *
     * @param Request $request The Symfony request to handle.
     * @return Response The Symfony response.
     */
    public function updateAndReplaceProduitAction(Request $request, $codeProduit)
    {
        // Make sure that the client is providing something that we can consume
        $consumes = ['application/json'];
        $inputFormat = $request->headers->has('Content-Type')?$request->headers->get('Content-Type'):$consumes[0];
        if (!in_array($inputFormat, $consumes)) {
            // We can't consume the content that the client is sending us
            return new Response('', 415);
        }

        // Figure out what data format to return to the client
        $produces = ['application/json'];
        // Figure out what the client accepts
        $clientAccepts = $request->headers->has('Accept')?$request->headers->get('Accept'):'*/*';
        $responseFormat = $this->getOutputFormat($clientAccepts, $produces);
        if ($responseFormat === null) {
            return new Response('', 406);
        }

        // Handle authentication

        // Read out all input parameter values into variables
        $body = $request->getContent();

        // Use the default value if no value was provided

        // Deserialize the input values that needs it
        $codeProduit = $this->deserialize($codeProduit, 'int', 'string');
        $body = $this->deserialize($body, 'Swagger\Server\Model\Produits', $inputFormat);

        // Validate the input values
        $asserts = [];
        $asserts[] = new Assert\NotNull();
        $asserts[] = new Assert\Type("int");
        $response = $this->validate($codeProduit, $asserts);
        if ($response instanceof Response) {
            return $response;
        }
        $asserts = [];
        $asserts[] = new Assert\NotNull();
        $asserts[] = new Assert\Type("Swagger\Server\Model\Produits");
        $response = $this->validate($body, $asserts);
        if ($response instanceof Response) {
            return $response;
        }


        try {
            $handler = $this->getApiHandler();

            
            // Make the call to the business logic
            $responseCode = 204;
            $responseHeaders = [];
            $result = $handler->updateAndReplaceProduit($codeProduit, $body, $responseCode, $responseHeaders);

            // Find default response message
            $message = 'succesful update';

            // Find a more specific message, if available
            switch ($responseCode) {
                case 200:
                    $message = 'succesful update';
                    break;
                case 404:
                    $message = 'Not found.';
                    break;
                case 0:
                    $message = 'Unexpected Error';
                    break;
            }

            return new Response(
                $result?$this->serialize($result, $responseFormat):'',
                $responseCode,
                array_merge(
                    $responseHeaders,
                    [
                        'Content-Type' => $responseFormat,
                        'X-Swagger-Message' => $message
                    ]
                )
            );
        } catch (Exception $fallthrough) {
            return $this->createErrorResponse(new HttpException(500, 'An unsuspected error occurred.', $fallthrough));
        }
    }

    /**
     * Returns the handler for this API controller.
     * @return ProduitsApiInterface
     */
    public function getApiHandler()
    {
        return $this->apiServer->getApiHandler('produits');
    }
}
