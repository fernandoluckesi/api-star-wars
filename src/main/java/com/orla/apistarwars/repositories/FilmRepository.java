package com.orla.apistarwars.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.orla.apistarwars.entities.FilmEntity;

public interface FilmRepository extends JpaRepository<FilmEntity, Long> {

    Optional<FilmEntity> findByEpisodeId(Long episodeId);

}
