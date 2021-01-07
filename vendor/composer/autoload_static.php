<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit641f497de8afe4527aaa87bef2b1e69b
{
    public static $prefixLengthsPsr4 = array (
        'U' => 
        array (
            'UAParser\\' => 9,
        ),
        'C' => 
        array (
            'Composer\\CaBundle\\' => 18,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'UAParser\\' => 
        array (
            0 => __DIR__ . '/..' . '/ua-parser/uap-php/src',
        ),
        'Composer\\CaBundle\\' => 
        array (
            0 => __DIR__ . '/..' . '/composer/ca-bundle/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit641f497de8afe4527aaa87bef2b1e69b::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit641f497de8afe4527aaa87bef2b1e69b::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit641f497de8afe4527aaa87bef2b1e69b::$classMap;

        }, null, ClassLoader::class);
    }
}
