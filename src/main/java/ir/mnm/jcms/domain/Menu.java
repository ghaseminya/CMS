package ir.mnm.jcms.domain;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Formula;

import javax.persistence.*;

/**
 * Represents category of article
 * 
 * @author Mohammad Ghaseminya
 */
@Entity
@Table(name = "menu")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@NamedQueries({
	@NamedQuery(
			name = "Menu.GET_ALL",
			query = "FROM Menu c ORDER BY c.name"),
	@NamedQuery(
			name = "Menu.GET_BY_NAME",
			query = "FROM Menu c WHERE c.name = :name")
})
public class Menu extends BaseEntity {

	private static final long serialVersionUID = 7369591777044660460L;

	/**
	 * Menu name
	 */
	@Column(name = "name", nullable = false, unique = true, length = 30)
	private String name;

	/**
	 * Article count having this Menu
	 */
	//@Formula("SELECT COUNT(id) FROM Article a WHERE a.menu_id = id")
	//private int articleCount;

	/**
	 * Articles having this category
	 */
	//@OneToMany(mappedBy = "category", fetch = FetchType.LAZY)
	//private Set<Article> articles;

	/**
	 * Default constructor
	 */
	public Menu() {}

	/**
	 * @return name of this category
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name category name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return article count having this category
	 */
	/*public int getArticleCount() {
		return articleCount;
	}*/

	/**
	 * @return articles having this category
	 */
	/*public Set<Article> getArticles() {
		return articles;
	}*/

	/**
	 * @param articles articles having this category
	 */
	/*public void setArticles(Set<Article> articles) {
		this.articles = articles;
	}*/

	/**
	 * @see Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 17;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	/**
	 * @see Object#equals(Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;

		Menu other = (Menu) obj;

		if (getName() != null
				? !getName().equals(other.getName())
				: other.getName() != null) {
			return false;
		}
		return true;
	}

	/**
	 * @see Object#toString()
	 */
	@Override
	public String toString() {
		return String.format("Category[id=%d, name=%s]", getId(), getName());
	}
}
