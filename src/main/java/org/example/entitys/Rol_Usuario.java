package org.example.entitys;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rol_usuario")
public class Rol_Usuario {

    @Id
    private int id;

    private int idrol;

    private String username;


    public Rol_Usuario(){
        super();
    }


    public Rol_Usuario(int id, int idrol, String username) {
        this.id = id;
        this.idrol = idrol;
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
