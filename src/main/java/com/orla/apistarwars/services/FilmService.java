package com.orla.apistarwars.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.orla.apistarwars.dtos.FilmDTO;
import com.orla.apistarwars.dtos.FilmDetailsDTO;
import com.orla.apistarwars.entities.FilmEntity;
import com.orla.apistarwars.exceptions.ValidationExceptionNotFound;
import com.orla.apistarwars.repositories.FilmRepository;

@Service
public class FilmService {

    @Autowired
    FilmRepository filmRepository;

    public FilmDetailsDTO findById(Long id) {

        FilmEntity film = this.filmRepository.findByEpisodeId(id)
                .orElseThrow(
                        () -> new ValidationExceptionNotFound(HttpStatus.NOT_FOUND.name(), "Filme não encontrado",
                                HttpStatus.NOT_FOUND.value()));

        FilmDetailsDTO filmDetails = new FilmDetailsDTO(film);

        return filmDetails;
    }

    public List<FilmDTO> getAll() {
        List<FilmEntity> films = filmRepository.findAll();

        List<FilmDTO> filmDTOs = films.stream()
                .map(FilmDTO::new)
                .collect(Collectors.toList());

        return filmDTOs;
    }

    public FilmEntity updateOpeningCrawl(Long id, String openingCrawl) {
        FilmEntity film = this.filmRepository.findByEpisodeId(id)
                .orElseThrow(
                        () -> new ValidationExceptionNotFound(HttpStatus.NOT_FOUND.name(), "Filme não encontrado",
                                HttpStatus.NOT_FOUND.value()));

        Integer currentVersion = film.getVersion();

        film.setVersion(currentVersion + 1);
        film.setOpeningCrawl(openingCrawl);

        return filmRepository.save(film);

    }

}
