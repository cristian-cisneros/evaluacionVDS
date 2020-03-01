package com.cgcc.negocio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cgcc.datos.ILibreriaDao;
import com.cgcc.modelo.Libreria;

@Service
public class LibreriaBo implements ILibreriaBo {
	
	@Autowired
	private ILibreriaDao lbo;
	
	public LibreriaBo() {
		
	}

	@Override
	public List<Libreria> findAll() {
		return lbo.findAll();
	}

	@Override
	public Libreria findBy(int idLibro) {
		return lbo.findBy(idLibro);
	}

	@Override
	public void editar(Libreria l) {
		lbo.editar(l);

	}

	@Override
	public void borrar(int idLibro) {
		lbo.borrar(idLibro);

	}

	@Override
	public void insertar(Libreria l) {
		lbo.insertar(l);
		
	}

}
