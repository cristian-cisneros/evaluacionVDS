package com.cgcc.modelo;

public class Libreria {
	private int idLibro;
	private String titulo;
	private String apellidosAutor;
	private String nombreAutor;
	private int numeroPaginas;
	private String imgUrl;
	
	
	public Libreria() {
		
	}

	public Libreria(int idLibro, String titulo, String apellidosAutor, String nombreAutor, int numeroPaginas,
			String imgUrl) {
		super();
		this.idLibro = idLibro;
		this.titulo = titulo;
		this.apellidosAutor = apellidosAutor;
		this.nombreAutor = nombreAutor;
		this.numeroPaginas = numeroPaginas;
		this.imgUrl = imgUrl;
	}

	public int getIdLibro() {
		return idLibro;
	}

	public void setIdLibro(int idLibro) {
		this.idLibro = idLibro;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getApellidosAutor() {
		return apellidosAutor;
	}

	public void setApellidosAutor(String apellidosAutor) {
		this.apellidosAutor = apellidosAutor;
	}

	public String getNombreAutor() {
		return nombreAutor;
	}

	public void setNombreAutor(String nombreAutor) {
		this.nombreAutor = nombreAutor;
	}

	public int getNumeroPaginas() {
		return numeroPaginas;
	}

	public void setNumeroPaginas(int numeroPaginas) {
		this.numeroPaginas = numeroPaginas;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	
	
	
	
	

}
