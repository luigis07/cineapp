package net.itinajero.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.itinajero.app.model.Noticia;
import net.itinajero.app.service.INoticiasService;

@Controller
@RequestMapping("/noticias")
public class NoticiasController {

	@Autowired
	private INoticiasService noticiasService;
	
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
		
		noticiasService.guardar(noticia);
		
		return "noticias/form";
	}
}
