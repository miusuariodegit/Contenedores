// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CategoriaTO.java

package com.electronicos.to;

import java.io.Serializable;

public class CategoriaTO
    implements Serializable
{

    public CategoriaTO()
    {
    }

    public int getId_categoria()
    {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria)
    {
        this.id_categoria = id_categoria;
    }

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    private int id_categoria;
    private String nombre;
}
