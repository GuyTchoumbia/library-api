package com.library.api.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.security.web.csrf.CsrfTokenRepository;

@Configuration
@EnableWebSecurity
public class WebSecurity extends WebSecurityConfigurerAdapter {	      
		
	@Override
    protected void configure(HttpSecurity http) throws Exception {
    	http 
        	.httpBasic().and() // basic authentification
//        	.logout().logoutUrl("/auth/logout").logoutSuccessHandler((req, res, auth) -> res.setStatus(HttpServletResponse.SC_OK)).and()  // basic log out configuration with logout url at "auth/logout", and disabling redirection (by default) by just responding with a succs code 
        	.cors().and()  // adds the cors filter
//        	.cors().disable()
        	.csrf().csrfTokenRepository(this.csrfTokenRepository()).and()  // adds csrf filter (XSRF-TOKEN header)
//        	.csrf().disable()  // dev only
        	.authorizeRequests()
//        		.antMatchers("/*").permitAll();   // dev only
        		.antMatchers("/auth/*", "/usercote/**").authenticated();
//                     
//                .and()
//                .addFilter(new JwtAuthenticationFilter(authenticationManager()))  // Jwt authentication filter
//                .addFilter(new JwtAuthorizationFilter(authenticationManager()));  // Jwt authorization filter
        
    }        
    
    public CsrfTokenRepository csrfTokenRepository() {
        CookieCsrfTokenRepository tokenRepository = CookieCsrfTokenRepository.withHttpOnlyFalse();        
        tokenRepository.setCookiePath("/");
        return tokenRepository;
    }    
    
}
