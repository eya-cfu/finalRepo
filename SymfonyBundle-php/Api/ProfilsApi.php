<?php


namespace Swagger\Server\Api;


use Swagger\Server\Model\Profils;

class ProfilsApi implements ProfilsApiInterface
{

    /**
     * @inheritDoc
     */
    public function addProfil(Profils $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addProfil() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteProfilByMatricule($matricule, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteProfilByMatricule() method.
    }

    /**
     * @inheritDoc
     */
    public function getProfilByLogin($login, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getProfilByLogin() method.
    }

    /**
     * @inheritDoc
     */
    public function getProfilByMatricule($matricule, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getProfilByMatricule() method.
    }

    /**
     * @inheritDoc
     */
    public function getProfils(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getProfils() method.
    }
}