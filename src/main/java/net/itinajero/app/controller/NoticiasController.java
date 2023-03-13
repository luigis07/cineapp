package net.itinajero.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.itinajero.app.model.Noticia;

@Controller
@RequestMapping("/noticias")
public class NoticiasController {

	@GetMapping("/create")
	public String crear() {
		return "noticias/form";
	}
	
	@PostMapping("/save")
	public String guardar(@RequestParam("titulo") String titulo, 
			@RequestParam("estatus") String estatus, 
			@RequestParam("detalle") String detalle) {
		
		Noticia noticia = new Noticia();
		noticia.setTitulo(titulo);
		noticia.setEstatus(estatus);
		noticia.setDetalle(detalle);
		
		// Pendiente de guardar en la base de datos
		
		System.out.println(noticia);
		
		return "noticias/form";
	}
}
