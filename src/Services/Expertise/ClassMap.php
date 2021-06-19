<?php

namespace App\Services\Expertise;

use App\Services\Expertise\ServiceType\Sendsluch;

/**
 * Class which returns the class map definition
 * @package
 */
class ClassMap
{
    /**
     * Returns the mapping between the WSDL Structs and generated Structs' classes
     * This array is sent to the \SoapClient when calling the WS
     * @return string[]
     */
    final public static function get(): array
    {
        return [
            'sendsluch' => '\\App\\Services\\Expertise\\StructType\\Sendsluch',
            'sluch' => '\\App\\Services\\Expertise\\StructType\\Sluch',
            'uslCollection' => '\\App\\Services\\Expertise\\StructType\\UslCollection',
            'lekCollection' => '\\App\\Services\\Expertise\\StructType\\LekCollection',
            'uslItem' => '\\App\\Services\\Expertise\\StructType\\UslItem',
            'lekItem' => '\\App\\Services\\Expertise\\StructType\\LekItem',
            'result' => '\\App\\Services\\Expertise\\StructType\\Result',
        ];
    }

    /**
     * Returns the mapping between the WSDL Structs and generated Structs' classes
     * This array is sent to the \SoapClient when calling the WS
     * @return string[]
     */
    public static function getOperation(): array
    {
        return [
            'sendsluch' => Sendsluch::class,
        ];
    }
}
