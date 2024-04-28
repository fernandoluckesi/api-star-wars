package com.orla.apistarwars.dtos;

import java.time.LocalDateTime;

import com.orla.apistarwars.entities.FilmEntity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FilmDTO {

    private String title;
    private Long episodeId;
    private LocalDateTime created;
    private LocalDateTime edited;
    private String url;

    public FilmDTO(FilmEntity film) {
        this.title = film.getTitle();
        this.episodeId = film.getEpisodeId();
        this.created = film.getCreated();
        this.edited = film.getEdited();
        this.url = film.getUrl();
    }

}
