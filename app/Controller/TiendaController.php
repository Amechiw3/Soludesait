<?php
/*  by: NOE CAZAREZ CAMARGO
    año: 10/24/18,
    Materia: ,
    Maestro: ,
    Descripcion:
*/
namespace App\Controller;


use App\Helpers\CartHelper;
use App\Helpers\ResponseHelper;
use App\Repositories\UsuarioRepository;
use Core\Controller;

class TiendaController extends  Controller
{
    private $carrito;
    public function __construct()
    {
        parent::__construct();
        $this->carrito=new CartHelper([
            'cartMaxItem'=>0, //SIN LIMITE DE CODIGOS
            'itemMaxQuantity'=>5, // MAXIMO 5 ART. POR CODIGO
            'useCookie'=>false  // NO UTILIZAR EL CACHE
        ]);
    }
    
    /*  Autor: SuZuma  10/24/18 
        Descripcion:
    */
    public function getindex(){
        return $this->render('tienda/index.twig',[
            'datos'=>(new UsuarioRepository())->listar()
        ]);
    }

    /*  Autor: SuZuma  10/24/18
        Descripcion:
    */
    public function postaddcar(){
        $rh=new ResponseHelper();
        $this->carrito->add(
            $_POST['id'], 1, ['codigo'=>$_POST['id']]
        );

        $rh->setResponse(true);
        print_r(json_encode($rh));
    }

    /*  Autor: SuZuma  10/24/18
        Descripcion:
    */
    public function getvercarrito(){

        return $this->render('tienda/vercarrito.twig',[
                'carrito' => $this->carrito->getItems()
        ]);
    }
    
    

}