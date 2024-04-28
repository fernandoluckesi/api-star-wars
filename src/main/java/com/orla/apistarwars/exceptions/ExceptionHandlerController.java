package com.orla.apistarwars.exceptions;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.orla.apistarwars.dtos.ApiError;
import com.orla.apistarwars.dtos.MethodArgumentNotValidDTO;
import com.orla.apistarwars.dtos.MethodArgumentNotValidDTO.ErrorDTO;

@ControllerAdvice
public class ExceptionHandlerController {

  private MessageSource messageSource;

  public ExceptionHandlerController(MessageSource messageSource) {
    this.messageSource = messageSource;
  }

  @ExceptionHandler(MethodArgumentNotValidException.class)
  public ResponseEntity<MethodArgumentNotValidDTO> handleMethodArgumentNotValidException(
      MethodArgumentNotValidException e) {

    List<ErrorDTO> errorsList = new ArrayList<>();
    e.getBindingResult().getFieldErrors().forEach(err -> {
      String message = messageSource.getMessage(err, LocaleContextHolder.getLocale());
      ErrorDTO error = new ErrorDTO(message, err.getField());
      errorsList.add(error);
    });

    MethodArgumentNotValidDTO methodArgumentNotValid = new MethodArgumentNotValidDTO("Erros de dados informados",
        errorsList, HttpStatus.BAD_REQUEST.value());

    return new ResponseEntity<>(methodArgumentNotValid, HttpStatus.BAD_REQUEST);
  }

  @ExceptionHandler(ValidationExceptionBadRequest.class)
  public ResponseEntity<ApiError> handleValidationExceptionUnder18YearsOld(ValidationExceptionBadRequest e) {

    ApiError error = new ApiError(e.getHttpStatusName(), e.getMessage(), e.getHttpStatusNumber());
    return new ResponseEntity<>(error, HttpStatus.BAD_REQUEST);
  }

  @ExceptionHandler(ValidationExceptionConflict.class)
  public ResponseEntity<ApiError> handleValidationExceptionConflict(ValidationExceptionConflict e) {

    ApiError error = new ApiError(e.getHttpStatusName(), e.getMessage(), e.getHttpStatusNumber());
    return new ResponseEntity<>(error, HttpStatus.CONFLICT);
  }

  @ExceptionHandler(ValidationExceptionNotFound.class)
  public ResponseEntity<ApiError> handleValidationExceptionNotFound(ValidationExceptionNotFound e) {

    ApiError error = new ApiError(e.getHttpStatusName(), e.getMessage(), e.getHttpStatusNumber());
    return new ResponseEntity<>(error, HttpStatus.NOT_FOUND);
  }

}
