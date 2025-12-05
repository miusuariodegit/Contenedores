// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PersonaTO.java

package com.electronicos.to;

import java.io.Serializable;

public class PersonaTO
    implements Serializable
{

    public PersonaTO()
    {
        nombre_completo = "";
        telefono = "";
        celular = "";
        correo = "";
        direccion = "";
        colonia = "";
        municipio = "";
        ciudad = "";
        codigo_postal = "";
    }

    public String getNombre_completo()
    {
        return nombre_completo;
    }

    public void setNombre_completo(String nombre_completo)
    {
        this.nombre_completo = nombre_completo;
    }

    public String getTelefono()
    {
        return telefono;
    }

    public void setTelefono(String telefono)
    {
        this.telefono = telefono;
    }

    public String getCelular()
    {
        return celular;
    }

    public void setCelular(String celular)
    {
        this.celular = celular;
    }

    public String getCorreo()
    {
        return correo;
    }

    public void setCorreo(String correo)
    {
        this.correo = correo;
    }

    public String getDireccion()
    {
        return direccion;
    }

    public void setDireccion(String direccion)
    {
        this.direccion = direccion;
    }

    public String getColonia()
    {
        return colonia;
    }

    public void setColonia(String colonia)
    {
        this.colonia = colonia;
    }

    public String getCiudad()
    {
        return ciudad;
    }

    public void setCiudad(String ciudad)
    {
        this.ciudad = ciudad;
    }

    public String getCodigo_postal()
    {
        return codigo_postal;
    }

    public void setCodigo_postal(String codigo_postal)
    {
        this.codigo_postal = codigo_postal;
    }

    public int getId_personas()
    {
        return id_personas;
    }

    public void setId_personas(int id_personas)
    {
        this.id_personas = id_personas;
    }

    public String getMunicipio()
    {
        return municipio;
    }

    public void setMunicipio(String municipio)
    {
        this.municipio = municipio;
    }

    private int id_personas;
    private String nombre_completo;
    private String telefono;
    private String celular;
    private String correo;
    private String direccion;
    private String colonia;
    private String municipio;
    private String ciudad;
    private String codigo_postal;
}
