package ir.mnm.jcms.security;

import java.util.Collection;
import java.util.HashSet;


import ir.mnm.jcms.domain.UserRole;
import ir.mnm.jcms.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

/**
 * Implementation of {@link UserDetailsService}
 * 
 * @author Oleg Filippov
 */
@Component("UserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserService service;

	/**
	 * @see org.springframework.security.core.userdetails.UserDetailsService#loadUserByUsername(java.lang.String)
	 */
	@Override
	public UserDetails loadUserByUsername(String login)
			throws UsernameNotFoundException {
	
		if ("".equals(login)) {
			throw new UsernameNotFoundException("User not found");
		}
		
		ir.mnm.jcms.domain.User user = service.getByLogin(login);

		if (user == null) {
			throw new UsernameNotFoundException("User not found");
		}
		
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		
		return new User(
				user.getLogin(),
				user.getPassword(),
				user.isEnabled(),
				accountNonExpired,
				credentialsNonExpired,
				!user.isLocked(),
				getAuthorities(user.getRoles()));
	}
	
	/**
	 * Get set of roles. Roles must be {@link GrantedAuthority} implementation
	 * 
	 * @param roles
	 * @return
	 */
	public Collection<? extends GrantedAuthority> getAuthorities(
			Collection<UserRole> roles) {

		Collection<GrantedAuthority> resultRoles = new HashSet<GrantedAuthority>();
		for (UserRole role : roles) {
			resultRoles.add(role);
		}
		return resultRoles;
	}
}
