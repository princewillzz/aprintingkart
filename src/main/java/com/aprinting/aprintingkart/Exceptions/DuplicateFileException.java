package com.aprinting.aprintingkart.Exceptions;

public class DuplicateFileException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public DuplicateFileException(String message) {
        super(message);
    }

    public DuplicateFileException(String message, Throwable cause) {
        super(message, cause);
    }

}
