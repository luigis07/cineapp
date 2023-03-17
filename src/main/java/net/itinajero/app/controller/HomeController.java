package net.itinajero.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.itinajero.app.model.Pelicula;
import net.itinajero.app.service.IPeliculasService;
import net.itinajero.app.util.Utils;

@Controller
public class HomeController {
	
	@Autowired
	private IPeliculasService peliculasService;
	
	private SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String goHome() {
		return "home";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String buscar(@RequestParam("fecha") String fecha, Model model) {
		List<String> listaFechas = Utils.getNextDays(4);
		
		List<Pelicula> peliculas = peliculasService.buscarPeliculas();
		
		model.addAttribute("fechas", listaFechas);
		model.addAttribute("fechaBusqueda", fecha);
		model.addAttribute("peliculas", peliculas);
		
		System.out.println("Buscando para la fecha: " + fecha);
		return "home";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mostrarPrincipal(Model model) {

		List<String> listaFechas = Utils.getNextDays(4);
		
		List<Pelicula> peliculas = peliculasService.buscarPeliculas();
//		peliculas.add("Rapido y furioso");
//		peliculas.add("El aro 2");
//		peliculas.add("Aliens");
		model.addAttribute("fechas", listaFechas);
		model.addAttribute("fechaBusqueda", sdf.format(new Date()));
		model.addAttribute("peliculas", peliculas);

		return "home";
	}

//	@RequestMapping(value = "/detail/{id}/{fecha}", method = RequestMethod.GET)
//	public String mostrarDetalle(Model model, @PathVariable("id") int idPelicula, @PathVariable("fecha") String fecha) {
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String mostrarDetalle(Model model, @RequestParam("idMovie") int idPelicula, @RequestParam("fecha") String fecha) {
		
		System.out.println("Buscando horarios para la pelicula: " + idPelicula);
		System.out.println("Para la fecha: " + fecha);
		model.addAttribute("pelicula", peliculasService.findById(idPelicula));
		
		// TODO - Buscar en la base de datos los horarios
		
//		String tituloPelicula = "Rapidos y furiosos";
//		int duracion = 136;
//		double precioEntrada = 50;
//
//		model.addAttribute("titulo", tituloPelicula);
//		model.addAttribute("duracion", duracion);
//		model.addAttribute("precio", precioEntrada);
		return "detalle";
	}

}
