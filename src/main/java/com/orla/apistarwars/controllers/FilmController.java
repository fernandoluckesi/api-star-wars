package com.orla.apistarwars.controllers;

import org.springframework.web.bind.annotation.RestController;

import com.orla.apistarwars.dtos.FilmDTO;
import com.orla.apistarwars.dtos.FilmDetailsDTO;
import com.orla.apistarwars.entities.FilmEntity;
import com.orla.apistarwars.services.FilmService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/films")
public class FilmController {

    @Autowired
    FilmService filmService;

    @GetMapping("/{id}")
    public ResponseEntity<FilmDetailsDTO> getById(@PathVariable Long id) {
        FilmDetailsDTO film = this.filmService.findById(id);

        return ResponseEntity.ok().body(film);
    }

    @GetMapping
    public ResponseEntity<List<FilmDTO>> getAll() {
        var films = this.filmService.getAll();

        return ResponseEntity.ok().body(films);
    }

    @PatchMapping("/{id}/opening-crawl")
    public ResponseEntity<Object> updateOpeningCrawl(@PathVariable Long id,
            @RequestBody FilmDetailsDTO filmDetailsDTO) {
        FilmEntity filmUpdated = filmService.updateOpeningCrawl(id, filmDetailsDTO.getOpeningCrawl());

        FilmDetailsDTO filmDetails = new FilmDetailsDTO(filmUpdated);

        return ResponseEntity.ok().body(filmDetails);

    }

}
