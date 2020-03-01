package com.cgcc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cgcc.modelo.Libreria;
import com.cgcc.negocio.ILibreriaBo;

@Controller
public class LibreriaController {
	
	@Autowired
	private ILibreriaBo lbo;
	
	//PAGINA INICIAL(INDEX)
		@RequestMapping(path = "/")
		public String index(ModelMap modelo) {
			return "index";
		}
		
	//MOSTRAR LOS LIBROS GUARDADOS EN LA BASE DE DATOS
		@RequestMapping(path="/libros")
		public String todosLibros(ModelMap modelo) {
			List<Libreria> listas = lbo.findAll();
			modelo.addAttribute("mostrarLibros",listas);
			return "libros";
		}
		
	//GUARDAR UN NUEVO LIBRO
		@RequestMapping(path = "/nuevoLibro", method = RequestMethod.GET)
		public String nuevoGet(ModelMap modelo) {
			Libreria l = new Libreria();
			l.setIdLibro(1);
			modelo.addAttribute("libros", l);
			return "nuevo";
		}
		@RequestMapping(path = "/nuevoLibro", method = RequestMethod.POST)
		public String nuevoPost(ModelMap modelo, @ModelAttribute("libros") Libreria l,
				BindingResult result) {
			if(result.hasErrors()) return "nuevoLibro"; {
			lbo.insertar(l);
			return "redirect:/nuevoLibro";
			}	
		}
		
	//EDITAR LOS LIBROS
		@RequestMapping(path = "/editarLibro", method = RequestMethod.GET)
		public String editarGetD(ModelMap modelo, @RequestParam("idLibro") int idLibro) {
			Libreria l = lbo.findBy(idLibro);
			modelo.addAttribute("libros", l);
			return "nuevo";
		}
		@RequestMapping(path="/editarLibro", method = RequestMethod.POST)
		public String editarPostD(ModelMap modelo,
				@ModelAttribute("libros")Libreria l, BindingResult result){
			lbo.editar(l);
			return "redirect:/libros?guardado";
		}
		
	//BORRAR LIBROS
		@RequestMapping(path = "/borrarLibro")
		public String borrarL(ModelMap modelo, @RequestParam("idLibro") int idLibro) {
			lbo.borrar(idLibro);
			return "redirect:/libros?borrado";
		}
	

}
