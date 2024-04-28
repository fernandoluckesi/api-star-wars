package com.orla.apistarwars.dtos;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import com.orla.apistarwars.entities.CharacterEntity;
import com.orla.apistarwars.entities.FilmEntity;
import com.orla.apistarwars.entities.PlanetEntity;
import com.orla.apistarwars.entities.SpecieEntity;
import com.orla.apistarwars.entities.StarshipEntity;
import com.orla.apistarwars.entities.VehicleEntity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FilmDetailsDTO {

    private String title;
    private Long episodeId;
    private String openingCrawl;
    private Integer version;
    private String director;
    private String producer;
    private LocalDate releaseDate;
    private List<CharacterEntity> characters;
    private List<PlanetEntity> planets;
    private List<StarshipEntity> starships;
    private List<VehicleEntity> vehicles;
    private List<SpecieEntity> species;
    private LocalDateTime created;
    private LocalDateTime edited;
    private String url;

    public FilmDetailsDTO(FilmEntity film) {
        this.title = film.getTitle();
        this.episodeId = film.getEpisodeId();
        this.openingCrawl = film.getOpeningCrawl();
        this.version = film.getVersion();
        this.director = film.getDirector();
        this.producer = film.getProducer();
        this.releaseDate = film.getReleaseDate();
        this.characters = film.getCharacters();
        this.planets = film.getPlanets();
        this.starships = film.getStarships();
        this.vehicles = film.getVehicles();
        this.species = film.getSpecies();
        this.created = film.getCreated();
        this.edited = film.getEdited();
        this.url = film.getUrl();
    }

}
