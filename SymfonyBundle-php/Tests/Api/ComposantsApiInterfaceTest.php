<?php
/**
 * ComposantsApiInterfaceTest
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
 * ComposantsApiInterfaceTest Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Server\Tests\Api
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class ComposantsApiInterfaceTest extends WebTestCase
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
     * Test case for addComposant
     *
     * add Composant Object.
     *
     */
    public function testAddComposant()
    {
        $client = static::createClient();

        $path = '/composants';

        $crawler = $client->request('POST', $path);
    }

    /**
     * Test case for composantsIdComposantGet
     *
     * get composant by id.
     *
     */
    public function testComposantsIdComposantGet()
    {
        $client = static::createClient();

        $path = '/composants/{idComposant}';
        $pattern = '{idComposant}';
        $data = $this->genTestData('[a-z0-9]+');
        $path = str_replace($pattern, $data, $path);

        $crawler = $client->request('GET', $path);
    }

    /**
     * Test case for deleteComposantById
     *
     * Deletes a composant by id.
     *
     */
    public function testDeleteComposantById()
    {
        $client = static::createClient();

        $path = '/composants/{idComposant}';
        $pattern = '{idComposant}';
        $data = $this->genTestData('[a-z0-9]+');
        $path = str_replace($pattern, $data, $path);

        $crawler = $client->request('DELETE', $path);
    }

    /**
     * Test case for getComposants
     *
     * get all composants.
     *
     */
    public function testGetComposants()
    {
        $client = static::createClient();

        $path = '/composants';

        $crawler = $client->request('GET', $path);
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
