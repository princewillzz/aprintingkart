package com.aprinting.aprintingkart.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@ControllerAdvice
public class MaxUploadSizeExceededExceptionHandler {

    @ExceptionHandler(value = { MaxUploadSizeExceededException.class })
    public RedirectView handleMaxSizeException(MaxUploadSizeExceededException exc, final HttpServletRequest request,
            final HttpServletResponse response, final RedirectAttributes redirectAttributes) {

        System.out.println("Exception Handler in image uploading");

        RedirectView redirectView = new RedirectView(request.getRequestURI());

        final String message = "Uploaded file size exceeded maximum size";

        redirectAttributes.addAttribute("error", message);

        return redirectView;
    }

}
