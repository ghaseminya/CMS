package ir.mnm.jcms.web;

import ir.mnm.jcms.domain.Article;
import ir.mnm.jcms.domain.Setting;
import ir.mnm.jcms.exception.NotFoundException;
import ir.mnm.jcms.service.ArticleService;
import ir.mnm.jcms.service.CategoryService;
import ir.mnm.jcms.service.MenuService;
import ir.mnm.jcms.service.TagService;
import ir.mnm.jcms.web.constants.Common;
import ir.mnm.jcms.web.constants.URL;
import ir.mnm.jcms.web.constants.View;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * Controller for home-page and static pages (about, contacts)
 * 
 * @author Oleg Filippov
 */
@Controller
public class MainController {

	private ArticleService articleService;
	private MenuService menuservice;
	private CategoryService categoryService;
	private TagService tagService;

	/**
	 * Constructor autowiring needed services
	 */
	@Autowired
	public MainController(ArticleService articleService,
			CategoryService categoryService,
			TagService tagService,
						  MenuService mservice) {
		this.articleService = articleService;
		this.categoryService = categoryService;
		this.tagService = tagService;
		this.menuservice= mservice;
	}

	/**
	 * Home-page, get news on first page
	 */
	@RequestMapping(method = RequestMethod.GET, value = URL.HOME)
	public ModelAndView home(HttpSession session) {
		
		return homeModelAndView(1, session);
	}
	
	/**
	 * Home-page, get news on custom page
	 */
	@RequestMapping(method = RequestMethod.GET,value = URL.HOME_CUSTOM_PAGE)
	public ModelAndView home(@PathVariable("number") Integer pageNumber,
			HttpSession session) {

		if (pageNumber == 1) {
			return new ModelAndView("redirect:" + URL.HOME);
		}
		
		return homeModelAndView(pageNumber, session);
	}
	
	/**
	 * Fills ModelAndView with news data
	 */
	private ModelAndView homeModelAndView(Integer pageNumber, HttpSession session) {
		
		if (pageNumber < 1) {
			throw new NotFoundException("Page < 1");
		}
		
		Map<String, Object> articlesData = articleService.getByPage(pageNumber, Common.ARTICLES_PER_PAGE);
		Integer pageCount = (Integer) articlesData.get("pageCount");
		
		@SuppressWarnings("unchecked")
		List<Article> articlesByPage = (List<Article>) articlesData.get("articlesByPage");
		
		if (session.getAttribute("categories") == null) {
			session.setAttribute("categories", categoryService.getAllTransactionally());
		}
		if (session.getAttribute("menus") == null) {
			session.setAttribute("menus", menuservice.getAllTransactionally());
		}
		if (session.getAttribute("tags") == null) {
			session.setAttribute("tags", tagService.getAllTransactionally());
		}
		
		return new ModelAndView(View.HOME)
				.addObject("pageCount", pageCount)
				.addObject("articlesByPage", articlesByPage)
				.addObject("currentPage", pageNumber)
				.addObject("requestUrl", URL.HOME);
	}
	
	/**
	 * About-page
	 */
	@RequestMapping(method = RequestMethod.GET, value = URL.ABOUT)
	public String aboutPage() {

		return View.ABOUT;
	}

	/**
	 * Contacts-page
	 */
	@RequestMapping(method = RequestMethod.GET, value = URL.CONTACTS)
	public String contactsPage() {

		return View.CONTACTS;
	}

	@Autowired
	private Setting setting;
	@RequestMapping(method = RequestMethod.GET, value = URL.Admin_dashboard)
	public ModelAndView admin_dashboard_Page() {
		return new ModelAndView(View.admin_dashboard)
				.addObject("setting",setting )
				.addObject("requestUrl", URL.Admin_dashboard);
	}
}
