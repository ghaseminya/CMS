package ir.mnm.jcms.service;

import ir.mnm.jcms.domain.User;

/**
 * Provides user-related operations
 * 
 * @author Oleg Filippov
 */
public interface UserService extends AbstractService<User> {

	/**
	 * Get user from repository by it's login
	 * 
	 * @param login user login
	 * @return user
	 */
	User getByLogin(String login);
	
	/**
	 * Get user from repository by it's email
	 * 
	 * @param email user email
	 * @return user
	 */
	User getByEmail(String email);
}
