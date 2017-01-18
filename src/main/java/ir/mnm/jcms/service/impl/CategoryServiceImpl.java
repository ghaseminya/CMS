package ir.mnm.jcms.service.impl;

import javax.persistence.PersistenceException;

import ir.mnm.jcms.repository.GenericRepository;
import ir.mnm.jcms.service.util.QueryParameters;
import ir.mnm.jcms.domain.Category;
import ir.mnm.jcms.exception.ServiceException;
import ir.mnm.jcms.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Implementation of {@link CategoryService}
 * 
 * @author Oleg Filippov
 */
@Service("CategoryService")
public class CategoryServiceImpl extends AbstractServiceImpl<Category>
		implements CategoryService {

	@Autowired
	public CategoryServiceImpl(GenericRepository<Category, Long> repository) {
		super(repository);
	}

	/**
	 * @see CategoryService#getByName(java.lang.String)
	 */
	@Override
	public Category getByName(String name) {
		try {
			return repository.getByNamedQuery("Category.GET_BY_NAME",
					QueryParameters.setParam("name", name).buildMap());
		} catch (PersistenceException e) {
			String message = String.format("Unable to get category=%s", name);
			throw new ServiceException(message, e);
		}
	}
}
