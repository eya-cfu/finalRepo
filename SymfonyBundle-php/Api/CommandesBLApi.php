<?php


namespace Swagger\Server\Api;


use Swagger\Server\Model\CommandesBL;

class CommandesBLApi implements CommandesBLApiInterface
{

    /**
     * @inheritDoc
     */
    public function addCommandeBL(CommandesBL $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addCommandeBL() method.
    }

    /**
     * @inheritDoc
     */
    public function commandesBLIdCommandeBLGet($idCommandeBL, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement commandesBLIdCommandeBLGet() method.
    }

    /**
     * @inheritDoc
     */
    public function deleteCommandeBLById($idCommandeBL, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteCommandeBLById() method.
    }

    /**
     * @inheritDoc
     */
    public function getCmdsByEtat($etat = null, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getCmdsByEtat() method.
    }

    /**
     * @inheritDoc
     */
    public function getCmdsByEtatAndBoulangerieID($etat = null, $idBoulangerie = null, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getCmdsByEtatAndBoulangerieID() method.
    }

    /**
     * @inheritDoc
     */
    public function getCmdsByEtatAndmatricule($etat = null, $matricule = null, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getCmdsByEtatAndmatricule() method.
    }

    /**
     * @inheritDoc
     */
    public function getCmdsForLab($etat = null, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getCmdsForLab() method.
    }

    /**
     * @inheritDoc
     */
    public function getDetailsByCommandeBL($idCommandeBL, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getDetailsByCommandeBL() method.
    }

    /**
     * @inheritDoc
     */
    public function getcommandesBL(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getcommandesBL() method.
    }

    /**
     * @inheritDoc
     */
    public function patchCmdBlEtat($idCommandeBL, $etat = null, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement patchCmdBlEtat() method.
    }

    /**
     * @inheritDoc
     */
    public function patchLivreur($idCommandeBL, $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement patchLivreur() method.
    }
}