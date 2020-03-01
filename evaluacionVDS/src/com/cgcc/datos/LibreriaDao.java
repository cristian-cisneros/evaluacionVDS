package com.cgcc.datos;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cgcc.modelo.Libreria;


@Repository
public class LibreriaDao implements ILibreriaDao {
	private JdbcTemplate plantilla;
	@Autowired
	public void setDataSource(DataSource ds) {
		this.plantilla = new JdbcTemplate(ds);
	}
	
	public LibreriaDao() {
		
	}
	

	@Override
	public List<Libreria> findAll() {
		String sql = "SELECT * FROM libros";
		return plantilla.query(sql, new LibreriaMapper());
	}

	@Override
	public Libreria findBy(int idLibro) {
		String sql = "SELECT * FROM libros WHERE idLibro = ?";
		return plantilla.queryForObject(sql, new LibreriaMapper(), idLibro);
	}

	@Override
	public void insertar(Libreria l) {
		String sql = "INSERT INTO libros (titulo, apellidosAutor, nombreAutor, numeroPaginas, imgUrl) VALUES (?,?,?,?,?)";
		plantilla.update(sql, l.getTitulo(), l.getApellidosAutor(), l.getNombreAutor(), l.getNumeroPaginas(), l.getImgUrl());

	}

	@Override
	public void editar(Libreria l) {
		String sql = "UPDATE libros SET titulo = ?, apellidosAutor = ?, nombreAutor = ?, numeroPaginas = ?, imgUrl = ? WHERE idLibro = ?";
		plantilla.update(sql, l.getTitulo(), l.getApellidosAutor(), l.getNombreAutor(), l.getNumeroPaginas(), l.getImgUrl(), l.getIdLibro());

	}

	@Override
	public void borrar(int idLibro) {
		String sql = "DELETE FROM libros WHERE idLibro = ?";
		plantilla.update(sql, idLibro);

	}

}
