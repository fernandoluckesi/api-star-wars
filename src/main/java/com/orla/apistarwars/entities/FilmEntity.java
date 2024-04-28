package com.orla.apistarwars.entities;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;

import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "films")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class FilmEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long episodeId;

    @NotBlank(message = "O título não pode estar vazio ou nulo")
    @Column(nullable = false, unique = true)
    private String title;

    @NotBlank(message = "O rastreamento de abertura não pode estar vazio ou nulo")
    @Column(nullable = false, unique = false, length = 3000)
    private String openingCrawl;

    @NotNull(message = "A Versão não pode estar vazio ou nulo")
    @Column(nullable = false, unique = false)
    private Integer version;

    @NotBlank(message = "Diretor não pode estar vazio ou nulo")
    @Column(nullable = false, unique = false)
    private String director;

    @NotBlank(message = "Produtor não pode estar vazio ou nulo")
    @Column(nullable = false, unique = false)
    private String producer;

    @NotNull
    @Column(nullable = false, unique = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate releaseDate;

    @CreationTimestamp
    private LocalDateTime created;

    @UpdateTimestamp
    private LocalDateTime edited;

    @NotBlank(message = "Url não pode estar vazia ou nula")
    @Column(nullable = false, unique = false)
    private String url;

    @ManyToMany
    @JoinTable(name = "films_characters", joinColumns = @JoinColumn(name = "film_episode_id"), inverseJoinColumns = @JoinColumn(name = "character_id"))
    private List<CharacterEntity> characters;

    @ManyToMany
    @JoinTable(name = "films_planets", joinColumns = @JoinColumn(name = "film_episode_id"), inverseJoinColumns = @JoinColumn(name = "planet_id"))
    private List<PlanetEntity> planets;

    @ManyToMany
    @JoinTable(name = "films_starships", joinColumns = @JoinColumn(name = "film_episode_id"), inverseJoinColumns = @JoinColumn(name = "starship_id"))
    private List<StarshipEntity> starships;

    @ManyToMany
    @JoinTable(name = "films_vehicles", joinColumns = @JoinColumn(name = "film_episode_id"), inverseJoinColumns = @JoinColumn(name = "vehicle_id"))
    private List<VehicleEntity> vehicles;

    @ManyToMany
    @JoinTable(name = "films_species", joinColumns = @JoinColumn(name = "film_episode_id"), inverseJoinColumns = @JoinColumn(name = "specie_id"))
    private List<SpecieEntity> species;

}
