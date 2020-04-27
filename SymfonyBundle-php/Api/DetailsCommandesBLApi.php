<?php


namespace Swagger\Server\Api;


use Swagger\Server\Model\DetailsCommandesBL;

class DetailsCommandesBLApi implements DetailsCommandesBLApiInterface
{

    /**
     * @inheritDoc
     */
    public function addDetailsCommandeBL(DetailsCommandesBL $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addDetailsCommandeBL() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteDetailsCommandesBLById($idDetail, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteDetailsCommandesBLById() method.
    }

    /**
     * @inheritDoc
     */
    public function getDetailByProduitAndDate($codeProduit, \DateTime $dueDate, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getDetailByProduitAndDate() method.
    }

    /**
     * @inheritDoc
     */
    public function getdetailsCommandesBL(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getdetailsCommandesBL() method.
    }

    /**
     * @inheritDoc
     */
    public function patchDetailQuantity($idDetail, $quantiteProd = null, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement patchDetailQuantity() method.
    }
}