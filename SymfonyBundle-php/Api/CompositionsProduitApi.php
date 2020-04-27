<?php


namespace Swagger\Server\Api;


use Swagger\Server\Model\CompositionsProduit;

class CompositionsProduitApi implements CompositionsProduitApiInterface
{

    /**
     * @inheritDoc
     */
    public function addCompositionProduit(CompositionsProduit $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addCompositionProduit() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteCompositionByProduitAndComposant($codeProduit, $idComposant, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteCompositionByProduitAndComposant() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteCompositionsProduitById($idComposition, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteCompositionsProduitById() method.
    }

    /**
     * @inheritDoc
     */
    public function getCompositionsProduit(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getCompositionsProduit() method.
    }
}