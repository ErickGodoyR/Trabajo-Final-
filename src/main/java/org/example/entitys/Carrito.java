package org.example.entitys;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Carrito {
   @Id
    private int id;
    private String sku;
    private String marca;
    private String nombre;
    private String detalle;
    private Double precio;
    private int cantidad;

    public Carrito(){
        super();
    }

    public Carrito(int id, String sku, String marca, String nombre, String detalle, Double precio, int cantidad) {
        this.id = id;
        this.sku = sku;
        this.marca = marca;
        this.nombre = nombre;
        this.detalle = detalle;
        this.precio = precio;
        this.cantidad = cantidad;
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

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
}
