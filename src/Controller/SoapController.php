<?php


namespace App\Controller;


use App\Services\Expertise\ClassMap;
use App\Services\SSPCallerOperation;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class SoapController extends AbstractController
{
    /**
     * @Route("/ws/expertise{trailingSlash}", requirements={"trailingSlash" = "[/]{0,1}"}, name="ws_expertise")
     */
    public function wsExpertiseAction(Request $request)
    {
        $wsdl = __DIR__ . "/../Resources/wsdl/expertise/Expertise.wsdl";

        if (((bool)$request->query->has('wsdl') == true || (bool)$request->query->has('WSDL'))) {
            return new Response(
                file_get_contents($wsdl),
                Response::HTTP_OK,
                array('content-type' => 'text/xml; charset=UTF-8')
            );
        }

        $options = [];
        $options['soap_version'] = SOAP_1_2;
        $options['classmap'] = ClassMap::get();
        $options['operationMap'] = ClassMap::getOperation();

        ini_set('soap.wsdl_cache_enabled', 1);
        ini_set('soap.wsdl_cache_ttl', 86400);
        ini_set('soap.wsdl_cache_limit', 100);
        ini_set('soap.wsdl_cache', WSDL_CACHE_NONE);
        ini_set('soap.wsdl_cache_dir', "/tmp");

        $server = new \SoapServer($wsdl, $options);

        $operationObject = new SSPCallerOperation($this->container);

        $server->setObject($operationObject);
        $response = new Response();
        $response->headers->set('Content-Type', 'text/xml; charset=UTF-8');
        ob_start();
        $server->handle();
        $response->setContent(ob_get_clean());

        return $response;
    }
}