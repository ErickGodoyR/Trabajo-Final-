package org.example.services;

import org.example.entitys.Categoria;
import org.example.repos.CategoriaRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoriaServiceImpl implements CategoriaService {

    @Autowired
    CategoriaRepo cr;

    @Override
    public void create(Categoria c) {
        cr.save(c);
    }

    @Override
    public List<Categoria> read() {
        return cr.findAll();
    }

    @Override
    public Categoria read(int id) {
        return cr.findById(id).orElse(new Categoria());
    }

    @Override
    public void update(Categoria c) {
        cr.save(c);
    }

    @Override
    public void delete(int id) {
        cr.deleteById(id);
    }
}
