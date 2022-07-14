package org.example.controladores;

import org.example.entitys.Carrito;
import org.example.entitys.Categoria;
import org.example.entitys.Producto;
import org.example.services.CarritoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(path = "/carrito")
public class carritoController {

    @Autowired
    CarritoService cs;

    @GetMapping
    public String Iniciocarrito(Model modelo) {


        modelo.addAttribute("carrito", cs.read());
        return "carrito2";
    }

    @GetMapping(value = "/edit2/{id}")
    public String updateProducto(@PathVariable("id") int id, Model model){

        model.addAttribute("producto", cs.read(id));

        return "confirmacion";
    }


    @RequestMapping("/nuevoProducto2/")
    public String addProducto(Model model){
        Producto p = new Producto();

        model.addAttribute("producto", p);

        return "nuevoProducto";
    }

    //Editar Objeto
    @PostMapping(value="/edit2/")
    public String saveProducto2(
            @RequestParam(name="id") int id,
            @RequestParam(name="sku") String sku,
            @RequestParam(name="marca") String marca,
            @RequestParam(name="nombre") String nombre,
            @RequestParam(name="detalle") String detalle,
            @RequestParam(name="precio") Double precio,
            @RequestParam(name="cantidad") int cantidad) {


        Carrito k = cs.read(id);
        k.setSku(sku);
        k.setMarca(marca);
        k.setNombre(nombre);
        k.setDetalle(detalle);
        k.setPrecio(precio);
        k.setCantidad(cantidad);

        cs.update(k);

        return "redirect:index";

    }


}
