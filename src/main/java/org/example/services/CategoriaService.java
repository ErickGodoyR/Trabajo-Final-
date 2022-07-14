package org.example.services;

import org.example.entitys.Categoria;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoriaService {

    public void create(Categoria c);
    public List<Categoria> read();
    public Categoria read(int id);
    public void update(Categoria c);
    public void delete(int id);

}
