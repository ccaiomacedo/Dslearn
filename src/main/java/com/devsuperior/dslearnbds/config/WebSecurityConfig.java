package com.devsuperior.dslearnbds.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Autowired
    private UserDetailsService userDetailsService;

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);//vai saber como buscar o usuário por email e como que vai analisar a senha criptografada
    }

    @Override
    public void configure(WebSecurity web) throws Exception { //esse metodo está liberando todos os caminhos da aplicação
        web.ignoring().antMatchers("/actuator/**");//actuator biblioteca spring, continua fazendo a mesma coisa que antes
    }

    @Override
    @Bean //pra que ele seja tb um componente disppnível no sistema
    public AuthenticationManager authenticationManager() throws Exception { // esse bean aqui serve pra fazer a autenticação
        return super.authenticationManager(); //esse metodo é pq na hora que eu for usar o authorization server, vou precisar desse objeto
    }
}