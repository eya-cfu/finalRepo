<?php


namespace Swagger\Server\Api;


use Swagger\Server\Model\Boulangeries;

class BoulangeriesApi implements BoulangeriesApiInterface
{

    /**
     * @inheritDoc
     */
    public function addBoulangerie(Boulangeries $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addBoulangerie() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteBoulangerie($idBoulangerie, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteBoulangerie() method.
    }

    /**
     * @inheritDoc
     */
    public function getBoulangerieById($idBoulangerie, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getBoulangerieById() method.
    }

    /**
     * @inheritDoc
     */
    public function getBoulangerieByMatricule($matricule, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getBoulangerieByMatricule() method.
    }

    /**
     * @inheritDoc
     */
    public function getBoulangeries(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getBoulangeries() method.
    }

    /**
     * @inheritDoc
     */
    public function updateAndReplaceBoulangerie($idBoulangerie, Boulangeries $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement updateAndReplaceBoulangerie() method.
    }
}