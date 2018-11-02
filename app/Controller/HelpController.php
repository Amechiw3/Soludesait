<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 21/09/2018
 * Time: 03:22 PM
 */

namespace App\Controller;


use Core\Controller;
use Core\ServicesContainer;

class HelpController extends Controller
{
    private $config;

    public function __construct()
    {
        parent::__construct();
        $this->config=ServicesContainer::getConfig();
    }

    public function getindex(){
        return$this->render('help/index.twig',[
            'title' =>  $this->config['company_name']
        ]);
    }
}