package org.example.controladores;

import org.example.entitys.Producto;
import org.example.services.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping(path = "/detalleProducto")
public class detalleController {
    @Autowired
    ProductoService ps;


    @GetMapping
    public String InicioAdmin(@PathVariable Integer id, Model modelo) {

        Producto p = new Producto();
        Optional<Producto> productoOptional = Optional.ofNullable(ps.read(id));
        p = productoOptional.get();

        modelo.addAttribute("producto", ps.read());


        return "detalleProducto";

    }


    //Editar objeto
    @GetMapping(value = "/edit2/{id}")
    public String updateProducto(@PathVariable("id") int id, Model model){

        model.addAttribute("producto", ps.read(id));

        return "editProducto";
    }

    //Editar Objeto
    @PostMapping(value="/edit2/")
    public String saveProducto(
            @RequestParam(name="id") int id,
            @RequestParam(name="idcategoria") String idcategoria,
            @RequestParam(name="sku") String sku,
            @RequestParam(name="marca") String marca,
            @RequestParam(name="nombre") String nombre,
            @RequestParam(name="detalle") String detalle,
            @RequestParam(name="precio") Double precio,
            @RequestParam(name="stock") int stock) {

        // BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10, new SecureRandom());

        Producto p = ps.read(id);
        p.setIdcategoria(idcategoria);
        p.setSku(sku);
        p.setMarca(marca);
        p.setNombre(nombre);
        p.setDetalle(detalle);
        p.setPrecio(precio);
        p.setStock(stock);

        ps.update(p);
        //u.setPassword(encoder.encode(password));

        return "redirect:/";

    }

}
