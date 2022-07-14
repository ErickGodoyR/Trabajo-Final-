package org.example.services;

import org.example.entitys.Carrito;
import org.example.entitys.Producto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CarritoService {

    public void create(Carrito c);
    public List<Carrito> read();
    public Carrito read(int id);
    public void update(Carrito c);
    public void delete(int id);

}
