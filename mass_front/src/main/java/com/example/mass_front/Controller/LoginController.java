package com.example.mass_front.Controller;

import com.example.mass_front.CustomerDetails;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class LoginController extends SavedRequestAwareAuthenticationSuccessHandler {
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
        CustomerDetails customerDetails = (CustomerDetails) authentication.getPrincipal();
        String redirecURL = request.getContextPath();
        if(customerDetails.hasRole("Customer")){
            redirecURL = "/";
        }
        response.sendRedirect(redirecURL);
    }
}
