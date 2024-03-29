package net.itinajero.app.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.itinajero.app.model.Pelicula;
import net.itinajero.app.service.IPeliculasService;
import net.itinajero.app.util.Utils;

@Controller
@RequestMapping("/peliculas")
public class PeliculasController {

	@Autowired
	private IPeliculasService peliculasService;

	@GetMapping("/index")
	public String mostrarIndex(Model model) {
		List<Pelicula> lista = peliculasService.buscarPeliculas();
		model.addAttribute("peliculas", lista);
		return "peliculas/listPeliculas";
	}

	@GetMapping("/create")
	public String crear(@ModelAttribute Pelicula pelicula) {
		return "peliculas/formPelicula";
	}

	@PostMapping("/save")
	public String guardar(@ModelAttribute Pelicula pelicula, BindingResult result, RedirectAttributes attributes,
			@RequestParam("archivoImagen") MultipartFile multipart, HttpServletRequest request) {

		if (result.hasErrors()) {
			System.out.println("Existieron errores");
			return "peliculas/formPelicula";
		}

		if (!multipart.isEmpty()) {
			String nombreImagen = Utils.guardarImagen(multipart, request);
			pelicula.setImagen(nombreImagen);
		}

//		for(ObjectError error : result.getAllErrors()) {
//			System.out.println(error.getDefaultMessage());
//		}

		System.out.println("Recibiendo objeto pelicula: " + pelicula);

		System.out.println("Elementos en la lista antes de la insersion: " + peliculasService.buscarPeliculas().size());

		peliculasService.insertar(pelicula);

		System.out.println("Elementos en la lista despues de la insersion: " + peliculasService.buscarPeliculas().size());

		attributes.addFlashAttribute("mensaje", "El registro fue guardado");

		// return "peliculas/formPelicula";
		return "redirect:/peliculas/index";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}
