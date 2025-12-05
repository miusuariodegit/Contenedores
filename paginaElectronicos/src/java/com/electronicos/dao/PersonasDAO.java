// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PersonasDAO.java

package com.electronicos.dao;

import com.electronicos.to.CategoriaTO;
import com.electronicos.to.PersonaTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class PersonasDAO
{
    private class CategoriasRowMapper
        implements RowMapper
    {

        @Override
        public CategoriaTO mapRow(ResultSet rs, int rowNum)
            throws SQLException
        {
            CategoriaTO to = new CategoriaTO();
            to.setId_categoria(rs.getInt("id_categoria"));
            to.setNombre(rs.getString("nombre"));
            return to;
        }

       

    }


    public PersonasDAO()
    {
    }

    public void setDataSource(DataSource dataSource)
    {
        this.dataSource = dataSource;
        setJdbcTemplateObject(new JdbcTemplate(dataSource));
    }

    public void inserta(PersonaTO to)
    {
        String sql = " INSERT INTO productosdb.personas  ( id_personas, nombre_completo, telefono, celular, correo, direccion, colonia, municpio, ciudad, codigo_postal )  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplateObject.update(sql, new Object[] {
            Integer.valueOf(to.getId_personas()), to.getNombre_completo(), to.getTelefono(), to.getCelular(), to.getCorreo(), to.getDireccion(), to.getColonia(), to.getMunicipio(), to.getCiudad(), to.getCodigo_postal()
        });
    }

    public List consultaTodasLasCategorias()
    {
        String SQL = "SELECT * FROM productosdb.categorias";
        List students = getJdbcTemplateObject().query(SQL, new CategoriasRowMapper());
        return students;
    }

    public DataSource getDataSource()
    {
        return dataSource;
    }

    public JdbcTemplate getJdbcTemplateObject()
    {
        return jdbcTemplateObject;
    }

    public void setJdbcTemplateObject(JdbcTemplate jdbcTemplateObject)
    {
        this.jdbcTemplateObject = jdbcTemplateObject;
    }

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;
}
