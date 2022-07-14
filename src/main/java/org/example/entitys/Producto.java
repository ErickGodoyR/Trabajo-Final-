package org.example.entitys;

import javax.persistence.*;
import java.sql.Blob;

@Entity
public class Producto {

    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "sku")
    private String sku;
    @Column(name = "marca")
    private String marca;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "detalle")
    private String detalle;
    @Column(name = "precio")
    private double precio;
    @Column(name = "stock")
    private int stock;
    @Column(name = "idcategoria")
    private String idcategoria;
    @Lob
    @Column(name = "foto", length = Integer.MAX_VALUE, nullable = true)
    //@Column(name = "foto", nullable = false)
    private Blob foto;


    public Producto(){
        super();
    }

    public Producto(int id, String sku, String marca, String nombre, String detalle, double precio, int stock, String idcategoria, Blob foto) {
        this.id = id;
        this.sku = sku;
        this.marca = marca;
        this.nombre = nombre;
        this.detalle = detalle;
        this.precio = precio;
        this.stock = stock;
        this.idcategoria = idcategoria;
        this.foto = foto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(String idcategoria) {
        this.idcategoria = idcategoria;
    }

    public Blob getFoto() {
        return foto;
    }

    public void setFoto(Blob foto) {
        this.foto = foto;
    }
}
