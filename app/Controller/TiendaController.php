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
use App\Helpers\UrlHelper;
use App\Models\Cupon;
use App\Models\Venta_Orden;
use App\Repositories\CuponRepository;
use App\Repositories\DireccionRepository;
use App\Repositories\ProductoRepository;
use App\Repositories\UsuarioRepository;
use App\Repositories\Venta_OrdenRepository;
use App\Validations\Venta_OrdenValidation;
use Core\Auth;
use Core\Controller;
use Core\ServicesContainer;

class TiendaController extends  Controller
{
    private $carrito;
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
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
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Tienda',
            'productos'=>(new ProductoRepository())->listar()
        ]);
    }

    public function getproductos()
    {
        return $this->render('tienda/productos.twig', [
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Productos',
            'productos' => (new ProductoRepository())->Listar()
        ]);
    }

    /*  Autor: SuZuma  10/24/18
        Descripcion:
    */
    public function postaddcar(){
        $rh=new ResponseHelper();
        $this->carrito->add(
            $_POST['id'],
            intval($_POST['cantidad'], 10),
            [
                'codigo'=>$_POST['id'],
                'price' =>$_POST['precio'],
                'producto' => $_POST['producto']
            ]
        );

        $rh->setResponse(true);
        print_r(json_encode($rh));
    }

    /***
        AUTOR:  Martin Fierro Robles 13/11/2018
        Descripcion:
    ***/
    public function geteliminarcarrito() {
        $this->carrito->destroy();
        UrlHelper::redirect('tienda/productos');
    }

    /*  Autor: SuZuma  10/24/18
        Descripcion:
    */
    public function getvercarrito(){

        return $this->render('tienda/vercarrito.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Carrito de compras',
            'carrito' => $this->carrito->getItems(),
            'TotalQuantity' => $this->carrito->getTotalQuantity(),
            'TotalItem' => $this->carrito->getTotalItem(),
            'AttributeTotal' => $this->carrito->getAttributeTotal()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 14/11/2018
        Descripcion: CREACION DE LA VENTA
    ***/
    public function postventa() {
        $model = new Venta_Orden();
        $model->usuario_id = Auth::getCurrentUser()->id;
        $model->direccion_id = $_POST['direccion_id'];
        $model->orden_fecha = date('YmdHis');
        $model->total = $_POST['total'];
        $model->cupon_id = $_POST['cupon_id'];
        $model->status_at = 0;
        
        $rh = (new Venta_OrdenRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'tienda/productos';
        }
        print_r(json_encode($rh));
    }
    public function getverproducto($id) {
        if ($id <= 0) {
            UrlHelper::redirect('producto');
        }
        return $this->render('producto/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Detalles de producto',
            'productos' => (new ProductoRepository())->Obtener($id)
        ]);
    }


    /***
        AUTOR:  Martin Fierro Robles 14/11/2018
        Descripcion: BUSQUEDA DE CUPONES VALIDOS
    ***/
    public function getcupon($p) {
        $model = (new CuponRepository())->Searchx($p);
        print_r(json_encode($model));
    }
}