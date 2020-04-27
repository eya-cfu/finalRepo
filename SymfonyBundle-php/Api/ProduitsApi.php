<?php


namespace Swagger\Server\Api;


use Swagger\Server\Model\Produits;

class ProduitsApi implements ProduitsApiInterface
{

    /**
     * @inheritDoc
     */
    public function addProduit(Produits $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addProduit() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteProduitByCodeProduit($codeProduit, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteProduitByCodeProduit() method.
    }

    /**
     * @inheritDoc
     */
    public function getCompositionsOfProduit($codeProduit, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getCompositionsOfProduit() method.
    }

    /**
     * @inheritDoc
     */
    public function getProduitByCodeProduit($codeProduit, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getProduitByCodeProduit() method.
    }

    /**
     * @inheritDoc
     */
    public function getProduits(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getProduits() method.
    }

    /**
     * @inheritDoc
     */
    public function updateAndReplaceProduit($codeProduit, Produits $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement updateAndReplaceProduit() method.
    }
}