package com.cgcc.negocio;

import java.util.List;

import com.cgcc.modelo.Libreria;

public interface ILibreriaBo {
	
	List<Libreria> findAll();
	Libreria findBy(int idLibro);
	
	void insertar(Libreria l);
	void editar (Libreria l);	
	void borrar (int idLibro);

}
