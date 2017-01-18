package ir.mnm.jcms.service;


import ir.mnm.jcms.domain.Menu;

/**
 * Provides category-related operations
 * 
 * @author Oleg Filippov
 */
public interface MenuService extends AbstractService<Menu> {
	
	/**
	 * Get menu from repository by it's name
	 * 
	 * @param name menu name
	 * @return menu
	 */
	Menu getByName(String name);
}
