<?php


namespace Swagger\Server\Api;


use Swagger\Server\Model\Composants;

class ComposantsApi implements ComposantsApiInterface
{

    /**
     * @inheritDoc
     */
    public function addComposant(Composants $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addComposant() method.
    }

    /**
     * @inheritDoc
     */
    public function composantsIdComposantGet($idComposant, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement composantsIdComposantGet() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteComposantById($idComposant, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteComposantById() method.
    }

    /**
     * @inheritDoc
     */
    public function getComposants(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getComposants() method.
    }
}