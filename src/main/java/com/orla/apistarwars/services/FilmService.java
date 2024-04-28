package com.orla.apistarwars.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orla.apistarwars.entities.FilmEntity;
import com.orla.apistarwars.repositories.FilmRepository;

@Service
public class FilmService {

    @Autowired
    FilmRepository filmRepository;

    public Optional<FilmEntity> findById(Long id) {
        Optional<FilmEntity> film = this.filmRepository.findByEpisodeId(id);

        return film;
    }

}
