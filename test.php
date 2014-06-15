<?php

require 'vendor/autoload.php';
Dotenv::load(__DIR__);

use GuzzleHttp\Cookie\CookieJar;
use GuzzleHttp\Cookie\SetCookie;
use GuzzleHttp\Message\Response;
use GuzzleHttp\Message\Request;
use GuzzleHttp\Client;

$filename = '/tmp/cj.txt';

$client = new Client();
$jar = new CookieJar();

$response = $client->post($_ENV['URL'], [
    'cookies' => new CookieJar(),
    'body'    =>
        [
            'email' => $_ENV['USERNAME'],
            'password' => $_ENV['PASSWORD'],
        ],
]);

echo $response->getBody();