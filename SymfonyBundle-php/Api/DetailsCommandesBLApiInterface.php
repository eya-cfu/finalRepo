<?php
/**
 * DetailsCommandesBLApiInterface
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Server
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

namespace Swagger\Server\Api;

use Symfony\Component\HttpFoundation\File\UploadedFile;
use Swagger\Server\Model\Date;
use Swagger\Server\Model\DetailsCommandesBL;

/**
 * DetailsCommandesBLApiInterface Interface Doc Comment
 *
 * @category Interface
 * @package  Swagger\Server\Api
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
interface DetailsCommandesBLApiInterface
{

    /**
     * Operation addDetailsCommandeBL
     *
     * add detailsCommandesBL
     *
     * @param  Swagger\Server\Model\DetailsCommandesBL $body  DetailsCommandeBl object that needs to be added (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return void
     *
     */
    public function addDetailsCommandeBL(DetailsCommandesBL $body, &$responseCode, array &$responseHeaders);

    /**
     * Operation deleteDetailsCommandesBLById
     *
     * Deletes a detail by ID
     *
     * @param  int $idDetail  detail Id to delete (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return void
     *
     */
    public function deleteDetailsCommandesBLById($idDetail, &$responseCode, array &$responseHeaders);

    /**
     * Operation getDetailByProduitAndDate
     *
     * get detailsCommandesBL by codeProduit and dueDate
     *
     * @param  int $codeProduit   (required)
     * @param  \DateTime $dueDate   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return Swagger\Server\Model\DetailsCommandesBL[]
     *
     */
    public function getDetailByProduitAndDate($codeProduit, \DateTime $dueDate, &$responseCode, array &$responseHeaders);

    /**
     * Operation getdetailsCommandesBL
     *
     * get all details for all commandes BL
     *
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return Swagger\Server\Model\DetailsCommandesBL[]
     *
     */
    public function getdetailsCommandesBL(&$responseCode, array &$responseHeaders);

    /**
     * Operation patchDetailQuantity
     *
     * patching the quantity of a detailsCommandesBL
     *
     * @param  int $idDetail   (required)
     * @param  int $quantiteProd   (optional)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return void
     *
     */
    public function patchDetailQuantity($idDetail, $quantiteProd = null, &$responseCode, array &$responseHeaders);
}
