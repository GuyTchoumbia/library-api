package com.library.api.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.library.api.entities.User;
import com.library.api.entities.user.Credentials;
import com.library.api.repositories.AuthenticationRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	
    private AuthenticationRepository authRepository;
    public UserDetailsServiceImpl(AuthenticationRepository applicationUserRepository) {
        this.authRepository = applicationUserRepository;
    }
    
	@Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = authRepository.findByCredentialsUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException(username);
        }
        return new Credentials(user.getCredentials().getUsername(), user.getCredentials().getPassword(), user.getCredentials().getAuthority());
    }
}