package org.example.services;

import org.example.entitys.Carrito;
import org.example.repos.CarritoRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarritoServiceImpl implements CarritoService{
    @Autowired
    CarritoRepo cr;

    @Override
    public void create(Carrito c) {
            cr.save(c);
    }

    @Override
    public List<Carrito> read() {
        return cr.findAll();
    }

    @Override
    public Carrito read(int id) {
        return cr.findById(id).orElse(new Carrito());
    }

    @Override
    public void update(Carrito c) {
        cr.save(c);
    }

    @Override
    public void delete(int id) {
        cr.deleteById(id);
    }
}
