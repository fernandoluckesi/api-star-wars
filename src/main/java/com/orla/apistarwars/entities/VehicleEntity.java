package com.orla.apistarwars.entities;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "vehicles")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class VehicleEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "A url não pode estar vazia ou nula")
    @Column(nullable = false, unique = false)
    private String vehicle_url;

    @ManyToMany(mappedBy = "vehicles")
    @JsonIgnore
    private List<FilmEntity> films;

}
