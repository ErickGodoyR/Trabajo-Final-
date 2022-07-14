package org.example.services;

import org.example.entitys.Producto;
import org.example.repos.ProductoRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductoServiceImpl implements ProductoService {

    @Autowired
    ProductoRepo pr;

    @Override
    public void create(Producto p) {
        pr.save(p);
    }

    @Override
    public List<Producto> read() {
        return pr.findAll();
    }

    @Override
    public Producto read(int id) {
        return pr.findById(id).orElse(new Producto());
    }

    @Override
    public void update(Producto p) {
        pr.save(p);
    }

    @Override
    public void delete(int id) {
        pr.deleteById(id);
    }

    @Override
    public List<Producto> findAllCategorias() {
        return pr.findAllCategorias();
    }

    @Override
    public List<Producto> findAllLub2() {
        return pr.findAllLub2();
    }

    @Override
    public List<Producto> findAllLub3() {
        return pr.findAllLub3();
    }

    @Override
    public List<Producto> findAllLub4() {
        return pr.findAllLub4();
    }

    @Override
    public List<Producto> findAllLub5() {
        return pr.findAllLub5();
    }

    @Override
    public List<Producto> findAllautobatt1() {
        return pr.findAllautobatt1();
    }

    @Override
    public List<Producto> findAllautobatt2() {
        return pr.findAllautobatt2();
    }

    @Override
    public List<Producto> findAllstyle1() {
        return pr.findAllstyle1();
    }

    @Override
    public List<Producto> findAllstyle2() {
        return pr.findAllstyle2();
    }

    @Override
    public List<Producto> findAllstyle3() {
        return pr.findAllstyle3();
    }

    @Override
    public List<Producto> findAllbosch1() {
        return pr.findAllbosch1();
    }

    @Override
    public List<Producto> findAllbosch2() {
        return pr.findAllbosch2();
    }

    @Override
    public List<Producto> findAllbosch3() {
        return pr.findAllbosch3();
    }

    @Override
    public List<Producto> findAllbosch4() {
        return pr.findAllbosch4();
    }

    @Override
    public List<Producto> findAllhankook1() {
        return pr.findAllhankook1();
    }

    @Override
    public List<Producto> findAllhankook2() {
        return pr.findAllhankook2();
    }

    @Override
    public List<Producto> findAllhankook3() {
        return pr.findAllhankook3();
    }

    @Override
    public List<Producto> findAllhankook4() {
        return pr.findAllhankook4();
    }

    @Override
    public List<Producto> findAllkarson1() {
        return pr.findAllkarso1();
    }

    @Override
    public List<Producto> findAllkarson2() {
        return pr.findAllkarson2();
    }

    @Override
    public List<Producto> findAllaustone1() {
        return pr.findAllautone1();
    }

    @Override
    public List<Producto> findAllaustone2() {
        return pr.findAllautone2();
    }

    @Override
    public List<Producto> findAllaustone3() {
        return pr.findAllautone3();
    }

    @Override
    public List<Producto> findAllaustone4() {
        return pr.findAllautone4();
    }

    @Override
    public List<Producto> findAllaustone5() {
        return pr.findAllautone5();
    }

    @Override
    public List<Producto> findAllbridgestone1() {
        return pr.findAllbridgestone1();
    }

    @Override
    public List<Producto> findAllbridgestone2() {
        return pr.findAllbridgestone2();
    }

    @Override
    public List<Producto> findAllbridgestone3() {
        return pr.findAllbridgestone3();
    }

    @Override
    public List<Producto> findAllbridgestone4() {
        return pr.findAllbridgestone4();
    }

    @Override
    public List<Producto> findAllbridgestone5() {
        return pr.findAllbridgestone5();
    }

    @Override
    public List<Producto> findAllgood1() {
        return pr.findAllgood1();
    }

    @Override
    public List<Producto> findAllgood2() {
        return pr.findAllgood2();
    }

    @Override
    public List<Producto> findAllgood3() {
        return pr.findAllgood3();
    }

    @Override
    public List<Producto> findAllgood4() {
        return pr.findAllgood4();
    }

    @Override
    public List<Producto> findAllgood5() {
        return pr.findAllgood5();
    }

    @Override
    public List<Producto> findAllcontinental1() {
        return pr.findAllcontinental1();
    }

    @Override
    public List<Producto> findAllcontinental2() {
        return pr.findAllcontinental2();
    }

    @Override
    public List<Producto> findAllcontinental3() {
        return pr.findAllcontinental3();
    }

    @Override
    public List<Producto> findAllcontinental4() {
        return pr.findAllcontinental4();
    }

    @Override
    public List<Producto> findAllcontinental5() {
        return pr.findAllcontinental5();
    }


    /*
    @Override
    public Optional<Producto> findByIdcategoria(String idcategoria) {
        //return Optional.empty();
        throw new UnsupportedOperationException();
    }*/
}
