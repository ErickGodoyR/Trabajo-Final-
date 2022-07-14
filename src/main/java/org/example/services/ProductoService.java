package org.example.services;

import org.example.entitys.Categoria;
import org.example.entitys.Producto;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface ProductoService {

    public void create(Producto p);
    public List<Producto> read();
    public Producto read(int id);
    public void update(Producto p);
    public void delete(int id);

    //BATERIAS
    public List<Producto> findAllCategorias();
    public List<Producto> findAllLub2();
    public List<Producto> findAllLub3();
    public List<Producto> findAllLub4();
    public List<Producto> findAllLub5();

    public List<Producto> findAllautobatt1();
    public List<Producto> findAllautobatt2();
    public List<Producto> findAllstyle1();
    public List<Producto> findAllstyle2();
    public List<Producto> findAllstyle3();
    public List<Producto> findAllbosch1();
    public List<Producto> findAllbosch2();
    public List<Producto> findAllbosch3();
    public List<Producto> findAllbosch4();
    public List<Producto> findAllhankook1();
    public List<Producto> findAllhankook2();
    public List<Producto> findAllhankook3();
    public List<Producto> findAllhankook4();
    public List<Producto> findAllkarson1();
    public List<Producto> findAllkarson2();


    //NEUMATICOS
    public List<Producto> findAllaustone1();
    public List<Producto> findAllaustone2();
    public List<Producto> findAllaustone3();
    public List<Producto> findAllaustone4();
    public List<Producto> findAllaustone5();

    public List<Producto> findAllbridgestone1();
    public List<Producto> findAllbridgestone2();
    public List<Producto> findAllbridgestone3();
    public List<Producto> findAllbridgestone4();
    public List<Producto> findAllbridgestone5();

    public List<Producto> findAllgood1();
    public List<Producto> findAllgood2();
    public List<Producto> findAllgood3();
    public List<Producto> findAllgood4();
    public List<Producto> findAllgood5();

    public List<Producto> findAllcontinental1();
    public List<Producto> findAllcontinental2();
    public List<Producto> findAllcontinental3();
    public List<Producto> findAllcontinental4();
    public List<Producto> findAllcontinental5();

}
