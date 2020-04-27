<?php


namespace Swagger\Server\Api;


use Swagger\Server\Model\Livreurs;

class LivreursApi implements LivreursApiInterface
{

    /**
     * @inheritDoc
     */
    public function addLivreur(Livreurs $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addLivreur() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteLivreurbyMatricule($matricule, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteLivreurbyMatricule() method.
    }

    /**
     * @inheritDoc
     */
    public function getLivreurs(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getLivreurs() method.
    }

    /**
     * @inheritDoc
     */
    public function getLivreursByMatricule($matricule, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getLivreursByMatricule() method.
    }

    /**
     * @inheritDoc
     */
    public function updateLivreur($matricule, Livreurs $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement updateLivreur() method.
    }
}