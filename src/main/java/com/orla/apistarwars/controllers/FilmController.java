package com.orla.apistarwars.controllers;

import org.springframework.web.bind.annotation.RestController;

import com.orla.apistarwars.dtos.FilmResponseDTO;
import com.orla.apistarwars.services.FilmService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/films")
public class FilmController {

    @Autowired
    FilmService filmService;

    @GetMapping("/{id}")
    public ResponseEntity<Object> getById(@PathVariable Long id) {
        var film = this.filmService.findById(id);

        return ResponseEntity.ok().body(film);
    }

}
