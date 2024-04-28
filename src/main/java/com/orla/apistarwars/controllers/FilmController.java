package com.orla.apistarwars.controllers;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.orla.apistarwars.config.RestTemplateConfig;
import com.orla.apistarwars.dtos.FilmResponseDTO;

import java.time.LocalDateTime;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/films")
public class FilmController {

    @GetMapping
    public FilmResponseDTO getAll() {

        return null;

    }

}
