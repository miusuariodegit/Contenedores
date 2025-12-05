package com.electronicos.dao;

import com.electronicos.to.ProductoTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ProductosDAO {

    public void inserta(ProductoTO to) {
        
        String sql = " INSERT INTO productosdb.productos  ( id_producto, categoria, nombre, precio, precioreal, marca, modelo, descripcion, nombre_archivo, proveedor )  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplateObject.update(sql, new Object[] {
            to.getId_producto(), to.getCategoria(), to.getNombre(), to.getPrecio(), to.getPrecio(), to.getMarca(), to.getModelo(),to.getDescripcion(),to.getNombre_archivo(),to.getProveedor()
        });
        
    }

    private class PersonasRowMapper
            implements RowMapper {

        public ProductoTO mapRow(ResultSet rs, int rowNum)
                throws SQLException {
            ProductoTO to = new ProductoTO();
            to.setId_producto(rs.getInt("id_producto"));
            to.setCategoria(rs.getInt("categoria"));
            to.setNombre(rs.getString("nombre"));
            to.setPrecio(rs.getFloat("precio"));
            to.setMarca(rs.getString("marca"));
            to.setModelo(rs.getString("modelo"));
            to.setDescripcion(rs.getString("descripcion"));
            to.setNombre_archivo(rs.getString("nombre_archivo"));
            return to;
        }

    }

    public ProductosDAO() {
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        setJdbcTemplateObject(new JdbcTemplate(dataSource));
    }

    public List consultaTodosConPagiacion(int offset) {
        String SQL = (new StringBuilder()).append("SELECT * FROM productosdb.productos LIMIT ").append(offset).append(",").append(offset + 10).append("").toString();
        System.out.println(SQL);
        List lista = getJdbcTemplateObject().query(SQL, new PersonasRowMapper());
        return lista;
    }

    public List consultaTodos() {
        String SQL = "SELECT * FROM productosdb.productos ";
        System.out.println(SQL);
        List lista = getJdbcTemplateObject().query(SQL, new PersonasRowMapper());
        return lista;
    }

    public List consultaPorCategoria(int id_categoria, int offset) {
        String SQL = (new StringBuilder()).append("SELECT * FROM productosdb.productos WHERE categoria=").append(id_categoria).append(" LIMIT ").append(offset).append(",").append(offset + 10).append("").toString();
        System.out.println(SQL);
        List lista = getJdbcTemplateObject().query(SQL, new PersonasRowMapper());
        return lista;
    }

    public List consultaPorPalabraClave(String nombre, int offset) {
        String SQL = (new StringBuilder()).append("SELECT * FROM productosdb.productos WHERE nombre LIKE '%").append(nombre).append("%'").append(" LIMIT ").append(offset).append(",").append(offset + 10).append("").toString();
        System.out.println(SQL);
        List lista = getJdbcTemplateObject().query(SQL, new PersonasRowMapper());
        return lista;
    }

    public ProductoTO consultaPorID(int id_producto) {
        String SQL = (new StringBuilder()).append("SELECT * FROM productosdb.productos WHERE id_producto = ").append(id_producto).toString();
        System.out.println(SQL);
        List lista = getJdbcTemplateObject().query(SQL, new PersonasRowMapper());
        return (ProductoTO) lista.get(0);
    }
    public void actualizaPagina(ProductoTO to) {
        String SQL = ("UPDATE  productosdb.productos SET ruta_pagina = ? WHERE id_producto = ?");
        System.out.println(SQL);
        jdbcTemplateObject.update(SQL, new Object[] {
            to.getRuta_pagina(), to.getId_producto()
        });
    }    

    public DataSource getDataSource() {
        return dataSource;
    }

    public JdbcTemplate getJdbcTemplateObject() {
        return jdbcTemplateObject;
    }

    public void setJdbcTemplateObject(JdbcTemplate jdbcTemplateObject) {
        this.jdbcTemplateObject = jdbcTemplateObject;
    }

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;
}
