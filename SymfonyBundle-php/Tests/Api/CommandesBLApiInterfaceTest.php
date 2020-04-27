<?php
/**
 * CommandesBLApiInterfaceTest
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Server\Tests\Api
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
 * Please update the test case below to test the endpoint.
 */

namespace Swagger\Server\Tests\Api;

use Swagger\Server\Configuration;
use Swagger\Server\ApiClient;
use Swagger\Server\ApiException;
use Swagger\Server\ObjectSerializer;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

/**
 * CommandesBLApiInterfaceTest Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Server\Tests\Api
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class CommandesBLApiInterfaceTest extends WebTestCase
{

    /**
     * Setup before running any test cases
     */
    public static function setUpBeforeClass()
    {
    }

    /**
     * Setup before running each test case
     */
    public function setUp()
    {
    }

    /**
     * Clean up after running each test case
     */
    public function tearDown()
    {
    }

    /**
     * Clean up after running all test cases
     */
    public static function tearDownAfterClass()
    {
    }

    /**
     * Test case for addCommandeBL
     *
     * create an orderBL.
     *
     */
    public function testAddCommandeBL()
    {
        $client = static::createClient();

        $path = '/commandesBL';

        $crawler = $client->request('POST', $path);
    }

    /**
     * Test case for commandesBLIdCommandeBLGet
     *
     * returns a commandeBL.
     *
     */
    public function testCommandesBLIdCommandeBLGet()
    {
        $client = static::createClient();

        $path = '/commandesBL/{idCommandeBL}';
        $pattern = '{idCommandeBL}';
        $data = $this->genTestData('\d+');
        $path = str_replace($pattern, $data, $path);

        $crawler = $client->request('GET', $path);
    }

    /**
     * Test case for deleteCommandeBLById
     *
     * Deletes a commandeBL by Id.
     *
     */
    public function testDeleteCommandeBLById()
    {
        $client = static::createClient();

        $path = '/commandesBL/{idCommandeBL}';
        $pattern = '{idCommandeBL}';
        $data = $this->genTestData('[a-z0-9]+');
        $path = str_replace($pattern, $data, $path);

        $crawler = $client->request('DELETE', $path);
    }

    /**
     * Test case for getCmdsByEtat
     *
     * returns commandes filtered collection for BL.
     *
     */
    public function testGetCmdsByEtat()
    {
        $client = static::createClient();

        $path = '/commandesBL/getCmdsByEtat';

        $crawler = $client->request('GET', $path);
    }

    /**
     * Test case for getCmdsByEtatAndBoulangerieID
     *
     * get Commandes collection of the Boulangerie by Etat.
     *
     */
    public function testGetCmdsByEtatAndBoulangerieID()
    {
        $client = static::createClient();

        $path = '/commandesBL/getCmdsbyEtatAndBoulangerieID';

        $crawler = $client->request('GET', $path);
    }

    /**
     * Test case for getCmdsByEtatAndmatricule
     *
     * gets commandes collection by matricule for livreur.
     *
     */
    public function testGetCmdsByEtatAndmatricule()
    {
        $client = static::createClient();

        $path = '/commandesBL/getCmdsByEtatAndMatricule';

        $crawler = $client->request('GET', $path);
    }

    /**
     * Test case for getCmdsForLab
     *
     * gets commandes filtered for laboratoire.
     *
     */
    public function testGetCmdsForLab()
    {
        $client = static::createClient();

        $path = '/commandesBL/getCmdsForLab';

        $crawler = $client->request('GET', $path);
    }

    /**
     * Test case for getDetailsByCommandeBL
     *
     * .
     *
     */
    public function testGetDetailsByCommandeBL()
    {
        $client = static::createClient();

        $path = '/commandesBL/{idCommandeBL}/detailsCmdBL';
        $pattern = '{idCommandeBL}';
        $data = $this->genTestData('\d+');
        $path = str_replace($pattern, $data, $path);

        $crawler = $client->request('GET', $path);
    }

    /**
     * Test case for getcommandesBL
     *
     * .
     *
     */
    public function testGetcommandesBL()
    {
        $client = static::createClient();

        $path = '/commandesBL';

        $crawler = $client->request('GET', $path);
    }

    /**
     * Test case for patchCmdBlEtat
     *
     * patching etat of a commandeBL objet.
     *
     */
    public function testPatchCmdBlEtat()
    {
        $client = static::createClient();

        $path = '/commandesBL/{idCommandeBL}';
        $pattern = '{idCommandeBL}';
        $data = $this->genTestData('\d+');
        $path = str_replace($pattern, $data, $path);

        $crawler = $client->request('PATCH', $path);
    }

    /**
     * Test case for patchLivreur
     *
     * putting in the matricule of Livreur.
     *
     */
    public function testPatchLivreur()
    {
        $client = static::createClient();

        $path = '/commandesBL/{idCommandeBL}/identifyLivreur';
        $pattern = '{idCommandeBL}';
        $data = $this->genTestData('\d+');
        $path = str_replace($pattern, $data, $path);

        $crawler = $client->request('PATCH', $path);
    }

    protected function genTestData($regexp)
    {
        $grammar  = new \Hoa\File\Read('hoa://Library/Regex/Grammar.pp');
        $compiler = \Hoa\Compiler\Llk\Llk::load($grammar);
        $ast      = $compiler->parse($regexp);
        $generator = new \Hoa\Regex\Visitor\Isotropic(new \Hoa\Math\Sampler\Random());

        return $generator->visit($ast); 
    }
}
