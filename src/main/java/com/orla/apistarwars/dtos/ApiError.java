package com.orla.apistarwars.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ApiError {

  private String error;
  private String message;
  private Integer statusCode;

}
