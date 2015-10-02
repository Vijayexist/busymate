package com.bizmate.authentication;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
@Component
public class CustomAuthenticationProvider implements AuthenticationProvider 
{

/*	@Override
	public UserDetails loadUserByUsername(String arg0)
			throws UsernameNotFoundException {
		Collection<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
		  SimpleGrantedAuthority userAuthority = new SimpleGrantedAuthority(
		    "ROLE_USER");
		  SimpleGrantedAuthority adminAuthority = new SimpleGrantedAuthority(
		    "ROLE_ADMIN");
		  authorities.add(userAuthority);
		  
		  authorities.add(adminAuthority);
		  UserDetails user = new User("12","1", true, true, true, true, authorities);
				  return user;
	}*/

	@Override
	public Authentication authenticate(Authentication authentication)
			throws AuthenticationException {
		Collection<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
		  SimpleGrantedAuthority userAuthority = new SimpleGrantedAuthority(
		    "ROLE_USER");
		  SimpleGrantedAuthority adminAuthority = new SimpleGrantedAuthority(
		    "ROLE_ADMIN");
		  authorities.add(userAuthority);
		  authorities.add(adminAuthority);
		  Authentication auth = new UsernamePasswordAuthenticationToken("Vijay Satlawar", "1", authorities);
          return auth;
	}

	 @Override
	    public boolean supports(Class<?> authentication) {
	        return authentication.equals(UsernamePasswordAuthenticationToken.class);
	    }

 

}
