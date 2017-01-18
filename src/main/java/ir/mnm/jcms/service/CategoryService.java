package ir.mnm.jcms.service;

import ir.mnm.jcms.domain.Category;

/**
 * Provides category-related operations
 * 
 * @author Oleg Filippov
 */
public interface CategoryService extends AbstractService<Category> {
	
	/**
	 * Get category from repository by it's name
	 * 
	 * @param name category name
	 * @return category
	 */
	Category getByName(String name);
}
