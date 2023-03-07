package com.example.mass_front.Confoguration;

import com.example.mass_front.Controller.LoginController;
import com.example.mass_front.service.CustomerDetailsserviceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private LoginController loginController;

    @Bean
    public UserDetailsService userDetailsService(){
        return new CustomerDetailsserviceImpl();
    }
    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
    @Bean
    public DaoAuthenticationProvider authenticationProvider(){
        DaoAuthenticationProvider authProvuder = new DaoAuthenticationProvider();
        authProvuder.setPasswordEncoder(passwordEncoder());
        authProvuder.setUserDetailsService(userDetailsService());
        return authProvuder;
    }
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/","/index","/Shop/**","/shop/**","/s","/Product-Details","/register").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .successHandler(loginController)
                .permitAll()
                .and()
                .logout().permitAll()
        ;
    }
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**","/static/**","/images/**","/Admin/**","/Home/**","/productImages/**","/css/**","/js/**");
    }
}
