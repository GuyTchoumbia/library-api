package com.library.api.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
public class Beans {	
    
    // @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }	
    
    // FOR TESTING ONLY
    @SuppressWarnings("deprecation")
	// fake password encoder
    // It is deprecated to indicate that this is a legacy implementation and using it is considered insecure (source: spring doc)
    // use the above bCrypt Encoder in prod (provided passwords stored in the database are properly encoded)

    @Bean
    public static NoOpPasswordEncoder passwordEncoder() {
      return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
    }
}
