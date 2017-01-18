package ir.mnm.jcms.service.impl;

import ir.mnm.jcms.domain.Menu;
import ir.mnm.jcms.repository.GenericRepository;
import ir.mnm.jcms.service.util.QueryParameters;
import ir.mnm.jcms.exception.ServiceException;
import ir.mnm.jcms.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.PersistenceException;

/**
 * Implementation of {@link MenuService}
 * 
 * @author Oleg Filippov
 */
@Service("MenuService")
public class MenuServiceImpl extends AbstractServiceImpl<Menu>
		implements MenuService {

	@Autowired
	public MenuServiceImpl(GenericRepository<Menu, Long> repository) {
		super(repository);
	}

	/**
	 * @see MenuService#getByName(String)
	 */
	@Override
	public Menu getByName(String name) {
		try {
			return repository.getByNamedQuery("Menu.GET_BY_NAME",
					QueryParameters.setParam("name", name).buildMap());
		} catch (PersistenceException e) {
			String message = String.format("Unable to get menu=%s", name);
			throw new ServiceException(message, e);
		}
	}
}
