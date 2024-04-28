package com.orla.apistarwars.dtos;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FilmResponseDTO {

    private int count;
    private String next;
    private String previous;
    private List<FilmResultsDTO> results;

}
