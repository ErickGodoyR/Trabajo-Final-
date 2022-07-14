package org.example.repos;

import org.example.entitys.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductoRepo extends JpaRepository<Producto, Integer> {

    //QUERY LUBRICANTES
    @Query(value ="select * from producto where sku='3000101'", nativeQuery = true)
    List<Producto> findAllCategorias();

    @Query(value ="select * from producto where sku='3000102'", nativeQuery = true)
    List<Producto> findAllLub2();

    @Query(value ="select * from producto where sku='3000103'", nativeQuery = true)
    List<Producto> findAllLub3();

    @Query(value ="select * from producto where sku='3000104'", nativeQuery = true)
    List<Producto> findAllLub4();

    @Query(value ="select * from producto where sku='3000105'", nativeQuery = true)
    List<Producto> findAllLub5();


    // QUERY BATERIAS
    @Query(value ="select * from producto where sku='2000101'", nativeQuery = true)
    List<Producto> findAllautobatt1();

    @Query(value ="select * from producto where sku='2000102'", nativeQuery = true)
    List<Producto> findAllautobatt2();

    @Query(value ="select * from producto where sku='2000201'", nativeQuery = true)
    List<Producto> findAllstyle1();

    @Query(value ="select * from producto where sku='2000202'", nativeQuery = true)
    List<Producto> findAllstyle2();

    @Query(value ="select * from producto where sku='2000203'", nativeQuery = true)
    List<Producto> findAllstyle3();

    @Query(value ="select * from producto where sku='2000301'", nativeQuery = true)
    List<Producto> findAllbosch1();

    @Query(value ="select * from producto where sku='2000302'", nativeQuery = true)
    List<Producto> findAllbosch2();

    @Query(value ="select * from producto where sku='2000303'", nativeQuery = true)
    List<Producto> findAllbosch3();

    @Query(value ="select * from producto where sku='2000304'", nativeQuery = true)
    List<Producto> findAllbosch4();

    @Query(value ="select * from producto where sku='2000401'", nativeQuery = true)
    List<Producto> findAllhankook1();

    @Query(value ="select * from producto where sku='2000402'", nativeQuery = true)
    List<Producto> findAllhankook2();

    @Query(value ="select * from producto where sku='2000403'", nativeQuery = true)
    List<Producto> findAllhankook3();

    @Query(value ="select * from producto where sku='2000404'", nativeQuery = true)
    List<Producto> findAllhankook4();

    @Query(value ="select * from producto where sku='2000501'", nativeQuery = true)
    List<Producto> findAllkarso1();

    @Query(value ="select * from producto where sku='2000502'", nativeQuery = true)
    List<Producto> findAllkarson2();


    //NEUMATICOS
    @Query(value ="select * from producto where sku='1000101'", nativeQuery = true)
    List<Producto> findAllautone1();

    @Query(value ="select * from producto where sku='1000102'", nativeQuery = true)
    List<Producto> findAllautone2();

    @Query(value ="select * from producto where sku='1000103'", nativeQuery = true)
    List<Producto> findAllautone3();

    @Query(value ="select * from producto where sku='1000104'", nativeQuery = true)
    List<Producto> findAllautone4();

    @Query(value ="select * from producto where sku='1000105'", nativeQuery = true)
    List<Producto> findAllautone5();

    @Query(value ="select * from producto where sku='1000201'", nativeQuery = true)
    List<Producto> findAllbridgestone1();

    @Query(value ="select * from producto where sku='1000202'", nativeQuery = true)
    List<Producto> findAllbridgestone2();

    @Query(value ="select * from producto where sku='1000203'", nativeQuery = true)
    List<Producto> findAllbridgestone3();

    @Query(value ="select * from producto where sku='1000204'", nativeQuery = true)
    List<Producto> findAllbridgestone4();

    @Query(value ="select * from producto where sku='1000205'", nativeQuery = true)
    List<Producto> findAllbridgestone5();

    @Query(value ="select * from producto where sku='1000301'", nativeQuery = true)
    List<Producto> findAllgood1();

    @Query(value ="select * from producto where sku='1000302'", nativeQuery = true)
    List<Producto> findAllgood2();

    @Query(value ="select * from producto where sku='1000303'", nativeQuery = true)
    List<Producto> findAllgood3();

    @Query(value ="select * from producto where sku='1000304'", nativeQuery = true)
    List<Producto> findAllgood4();

    @Query(value ="select * from producto where sku='1000305'", nativeQuery = true)
    List<Producto> findAllgood5();

    @Query(value ="select * from producto where sku='1000401'", nativeQuery = true)
    List<Producto> findAllcontinental1();

    @Query(value ="select * from producto where sku='1000402'", nativeQuery = true)
    List<Producto> findAllcontinental2();

    @Query(value ="select * from producto where sku='1000403'", nativeQuery = true)
    List<Producto> findAllcontinental3();

    @Query(value ="select * from producto where sku='1000404'", nativeQuery = true)
    List<Producto> findAllcontinental4();

    @Query(value ="select * from producto where sku='1000405'", nativeQuery = true)
    List<Producto> findAllcontinental5();
}
