package org.example.controladores;

import org.example.entitys.Carrito;
import org.example.entitys.Categoria;
import org.example.entitys.Producto;
import org.example.services.CarritoService;
import org.example.services.CategoriaService;
import org.example.services.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping(path = "/producto")
public class productoController {

    @Autowired
    ProductoService ps;

    @Autowired
    CategoriaService cs;

    @Autowired
    CarritoService cas;

    //Mostrar página
    @GetMapping
    public String InicioAdmin(Model modelo) {

        modelo.addAttribute("producto", ps.read());

        return "producto";
    }


    //Agregar objeto a la tabla
    @RequestMapping("/nuevoProducto/")
    public String addProducto(Model model){
        Producto p = new Producto();
        List<Categoria> listacategoria = cs.read();

        model.addAttribute("producto", p);
        model.addAttribute("categoria", listacategoria);

        return "nuevoProducto";
    }


    //Editar objeto
    @GetMapping(value = "/edit/{id}")
    public String updateProducto(@PathVariable("id") int id, Model model){

        model.addAttribute("producto", ps.read(id));

        return "editProducto";
    }

    //Editar objeto
  /*  @GetMapping(value = "/edit2/{id}")
    public String updateProducto2(@PathVariable("id") int id, Model model){

        model.addAttribute("producto", ps.read(id));

        return "editProducto2";
    }*/

    //Editar Objeto
    @PostMapping(value="/edit/")
    public String saveProducto(
            @RequestParam(name="id") int id,
            @RequestParam(name="idcategoria") String idcategoria,
            @RequestParam(name="sku") String sku,
            @RequestParam(name="marca") String marca,
            @RequestParam(name="nombre") String nombre,
            @RequestParam(name="detalle") String detalle,
            @RequestParam(name="precio") Double precio,
            @RequestParam(name="stock") int stock) {

        Producto p = ps.read(id);
        p.setIdcategoria(idcategoria);
        p.setSku(sku);
        p.setMarca(marca);
        p.setNombre(nombre);
        p.setDetalle(detalle);
        p.setPrecio(precio);
        p.setStock(stock);

        ps.update(p);

        return "redirect:/";

    }

/*
    @PostMapping(value="/edit2/")
    public String saveProducto2(
            @RequestParam(name="id") int id,
            @RequestParam(name="sku") String sku,
            @RequestParam(name="marca") String marca,
            @RequestParam(name="nombre") String nombre,
            @RequestParam(name="detalle") String detalle,
            @RequestParam(name="precio") Double precio,
            @RequestParam(name="cantidad") int cantidad) {


        Carrito k = cas.read(id);
        k.setSku(sku);
        k.setMarca(marca);
        k.setNombre(nombre);
        k.setDetalle(detalle);
        k.setPrecio(precio);
        k.setCantidad(cantidad);

        cas.update(k);

        return "redirect:index";

    }
*/

    @RequestMapping("/del/{id}")
    public String deleteProducto(@PathVariable(name ="id") Long id){
        ps.delete(Math.toIntExact(id));

        return "redirect:/producto";
    }



    //Prueba de query
    @RequestMapping("/qlub1/")
    public String buscarProducto(Model model) {
        List<Producto> listaproducto = ps.findAllCategorias();
        model.addAttribute("producto", listaproducto);
        return "qlub";
    }

    @RequestMapping("/qlub2/")
    public String buscarLub2(Model model) {
        List<Producto> listalub2 = ps.findAllLub2();
        model.addAttribute("producto", listalub2);
        return "qlub";
    }

    @RequestMapping("/qlub3/")
    public String buscarLub3(Model model) {
        List<Producto> listalub3 = ps.findAllLub3();
        model.addAttribute("producto", listalub3);
        return "qlub";
    }

    @RequestMapping("/qlub4/")
    public String buscarLub4(Model model) {
        List<Producto> listalub4 = ps.findAllLub4();
        model.addAttribute("producto", listalub4);
        return "qlub";
    }

    @RequestMapping("/qlub5/")
    public String buscarLub5(Model model) {
        List<Producto> listalub5 = ps.findAllLub5();
        model.addAttribute("producto", listalub5);
        return "qlub";
    }

    //Query de baterias
    @RequestMapping("/qab1/")
    public String buscarab1(Model model) {
        List<Producto> listaab1 = ps.findAllautobatt1();
        model.addAttribute("producto", listaab1);
        return "qbat";
    }

    @RequestMapping("/qab2/")
    public String buscarab2(Model model) {
        List<Producto> listaab2 = ps.findAllautobatt2();
        model.addAttribute("producto", listaab2);
        return "qbat";
    }

    @RequestMapping("/style1/")
    public String buscarst1(Model model) {
        List<Producto> listst1 = ps.findAllstyle1();
        model.addAttribute("producto", listst1);
        return "qbat";
    }

    @RequestMapping("/style2/")
    public String buscarst2(Model model) {
        List<Producto> listast2 = ps.findAllstyle2();
        model.addAttribute("producto", listast2);
        return "qbat";
    }

    @RequestMapping("/style3/")
    public String buscarst3(Model model) {
        List<Producto> listast3 = ps.findAllstyle3();
        model.addAttribute("producto", listast3);
        return "qbat";
    }

    @RequestMapping("/bosch1/")
    public String buscarb1(Model model) {
        List<Producto> listab1 = ps.findAllbosch1();
        model.addAttribute("producto", listab1);
        return "qbat";
    }

    @RequestMapping("/bosch2/")
    public String buscarb2(Model model) {
        List<Producto> listab2 = ps.findAllbosch2();
        model.addAttribute("producto", listab2);
        return "qbat";
    }

    @RequestMapping("/bosch3/")
    public String buscarb3(Model model) {
        List<Producto> listab3 = ps.findAllbosch3();
        model.addAttribute("producto", listab3);
        return "qbat";
    }

    @RequestMapping("/bosch4/")
    public String buscarb4(Model model) {
        List<Producto> listab4 = ps.findAllbosch4();
        model.addAttribute("producto", listab4);
        return "qbat";
    }

    @RequestMapping("/hankook1/")
    public String buscarh1(Model model) {
        List<Producto> listah1 = ps.findAllhankook1();
        model.addAttribute("producto", listah1);
        return "qbat";
    }

    @RequestMapping("/hankook2/")
    public String buscarh2(Model model) {
        List<Producto> listah2 = ps.findAllhankook2();
        model.addAttribute("producto", listah2);
        return "qbat";
    }

    @RequestMapping("/hankook3/")
    public String buscarh3(Model model) {
        List<Producto> listah3 = ps.findAllhankook3();
        model.addAttribute("producto", listah3);
        return "qbat";
    }

    @RequestMapping("/hankook4/")
    public String buscarh4(Model model) {
        List<Producto> listah4 = ps.findAllhankook4();
        model.addAttribute("producto", listah4);
        return "qbat";
    }

    @RequestMapping("/karson1/")
    public String buscark1(Model model) {
        List<Producto> listak1 = ps.findAllkarson1();
        model.addAttribute("producto", listak1);
        return "qbat";
    }


    @RequestMapping("/karson2/")
    public String buscark2(Model model) {
        List<Producto> listak2 = ps.findAllkarson2();
        model.addAttribute("producto", listak2);
        return "qbat";
    }


    //NEUMATICOS
    @RequestMapping("/qaustone1/")
    public String buscaraustone1(Model model) {
        List<Producto> lista_a1 = ps.findAllaustone1();
        model.addAttribute("producto", lista_a1);
        return "qneu";
    }

    @RequestMapping("/qaustone2/")
    public String buscaraustone2(Model model) {
        List<Producto> lista_a2 = ps.findAllaustone2();
        model.addAttribute("producto", lista_a2);
        return "qneu";
    }

    @RequestMapping("/qaustone3/")
    public String buscaraustone3(Model model) {
        List<Producto> lista_a3 = ps.findAllaustone3();
        model.addAttribute("producto", lista_a3);
        return "qneu";
    }

    @RequestMapping("/qaustone4/")
    public String buscaraustone4(Model model) {
        List<Producto> lista_a4 = ps.findAllaustone4();
        model.addAttribute("producto", lista_a4);
        return "qneu";
    }

    @RequestMapping("/qaustone5/")
    public String buscaraustone5(Model model) {
        List<Producto> lista_a5 = ps.findAllaustone5();
        model.addAttribute("producto", lista_a5);
        return "qneu";
    }

    @RequestMapping("/qbridgestone1/")
    public String buscarbridgestone1(Model model) {
        List<Producto> lista_b1 = ps.findAllbridgestone1();
        model.addAttribute("producto", lista_b1);
        return "qneu";
    }

    @RequestMapping("/qbridgestone2/")
    public String buscarbridgestone2(Model model) {
        List<Producto> lista_b2 = ps.findAllbridgestone2();
        model.addAttribute("producto", lista_b2);
        return "qneu";
    }

    @RequestMapping("/qbridgestone3/")
    public String buscarbridgestone3(Model model) {
        List<Producto> lista_b3 = ps.findAllbridgestone3();
        model.addAttribute("producto", lista_b3);
        return "qneu";
    }

    @RequestMapping("/qbridgestone4/")
    public String buscarbridgestone4(Model model) {
        List<Producto> lista_b4 = ps.findAllbridgestone4();
        model.addAttribute("producto", lista_b4);
        return "qneu";
    }

    @RequestMapping("/qbridgestone5/")
    public String buscarbridgestone5(Model model) {
        List<Producto> lista_b5 = ps.findAllbridgestone5();
        model.addAttribute("producto", lista_b5);
        return "qneu";
    }

    @RequestMapping("/qcontinental1/")
    public String buscarcontinental1(Model model) {
        List<Producto> lista_c1 = ps.findAllcontinental1();
        model.addAttribute("producto", lista_c1);
        return "qneu";
    }

    @RequestMapping("/qcontinental2/")
    public String buscarcontinental2(Model model) {
        List<Producto> lista_c2 = ps.findAllcontinental2();
        model.addAttribute("producto", lista_c2);
        return "qneu";
    }

    @RequestMapping("/qcontinental3/")
    public String buscarcontinental3(Model model) {
        List<Producto> lista_c3 = ps.findAllcontinental3();
        model.addAttribute("producto", lista_c3);
        return "qneu";
    }

    @RequestMapping("/qcontinental4/")
    public String buscarcontinental4(Model model) {
        List<Producto> lista_c4 = ps.findAllcontinental4();
        model.addAttribute("producto", lista_c4);
        return "qneu";
    }

    @RequestMapping("/qcontinental5/")
    public String buscarcontinental5(Model model) {
        List<Producto> lista_c5 = ps.findAllcontinental5();
        model.addAttribute("producto", lista_c5);
        return "qneu";
    }

    @RequestMapping("/qgood1/")
    public String buscargood1(Model model) {
        List<Producto> lista_g1 = ps.findAllgood1();
        model.addAttribute("producto", lista_g1);
        return "qneu";
    }


    @RequestMapping("/qgood2/")
    public String buscargood2(Model model) {
        List<Producto> lista_g2 = ps.findAllgood2();
        model.addAttribute("producto", lista_g2);
        return "qneu";
    }


    @RequestMapping("/qgood3/")
    public String buscargood3(Model model) {
        List<Producto> lista_g3 = ps.findAllgood3();
        model.addAttribute("producto", lista_g3);
        return "qneu";
    }


    @RequestMapping("/qgood4/")
    public String buscargood4(Model model) {
        List<Producto> lista_g4 = ps.findAllgood4();
        model.addAttribute("producto", lista_g4);
        return "qneu";
    }

    @RequestMapping("/qgood5/")
    public String buscargood5(Model model) {
        List<Producto> lista_g5 = ps.findAllgood5();
        model.addAttribute("producto", lista_g5);
        return "qneu";
    }
}
