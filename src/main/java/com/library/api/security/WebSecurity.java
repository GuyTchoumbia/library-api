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
        	// .httpBasic().and()        	      	
        	.cors().and()  // adds the cors filter
        	.csrf().csrfTokenRepository(this.csrfTokenRepository()).and()  // adds csrf filter (XSRF-TOKEN header)
        	// .csrf().disable()
        	.authorizeRequests()
        		.antMatchers("/*").permitAll();
        		// .antMatchers("/index.html", "/library/*").permitAll()
        		//.antMatchers("/auth/user", "/usercote/reserve", "usercote/delete").authenticated();
//                .antMatchers(HttpMethod.POST, SecurityConstants.SIGN_UP_URL).permitAll()
                 //.anyRequest().authenticated();
//                .and()
//                .addFilter(new JwtAuthenticationFilter(authenticationManager()))
//                .addFilter(new JwtAuthorizationFilter(authenticationManager()));
    }
        
    
    public CsrfTokenRepository csrfTokenRepository() {
        CookieCsrfTokenRepository tokenRepository = CookieCsrfTokenRepository.withHttpOnlyFalse();        
        tokenRepository.setCookiePath("/");
        return tokenRepository;
    }    
    
}
