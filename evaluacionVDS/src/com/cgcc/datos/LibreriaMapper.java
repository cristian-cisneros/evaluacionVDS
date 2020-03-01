package com.cgcc.datos;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper; 

import com.cgcc.modelo.Libreria;

public class LibreriaMapper implements RowMapper<Libreria> {
	
	public LibreriaMapper() {
		
	}
	
	@Override
	public Libreria mapRow(ResultSet rs, int index) throws SQLException{
		
		return new Libreria(
				rs.getInt("idLibro"),
				rs.getString("titulo"),
				rs.getString("apellidosAutor"),
				rs.getString("nombreAutor"),
				rs.getInt("numeroPaginas"),
				rs.getString("imgUrl")
				);
				
		
	}

}
