package net.itinajero.app.service;

import java.util.List;

import net.itinajero.app.model.Pelicula;

public interface IPeliculasService {
	
	List<Pelicula> buscarPeliculas();
	
	Pelicula findById(int idPelicula);
}
