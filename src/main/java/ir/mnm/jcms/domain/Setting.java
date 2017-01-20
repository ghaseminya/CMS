package ir.mnm.jcms.domain;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.stereotype.Component;

/**
 * Created by mghasemy on 1/20/17.
 */
@Component
public class Setting {
    @Value( value = "${website.title}" )
    private String websiteTitle;
    @Value( value = "${website.keyword}" )
    private String websiteKeyword;
    @Value( value = "${website.logo}" )
    private String websiteLogo;
    @Value( value = "${website.description}" )
    private String websiteDescription;
    @Value( value = "${website.author}" )
    private String websiteAuthor;
    @Value( value = "${website.footer}" )
    private String websiteFooter;
    @Value( value = "${website.owner}" )
    private String websiteOwner;
    @Value( value = "${fm}" )
    private String FM;
    @Value( value = "${version}" )
    private String version;
    @Bean
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }
    public Setting() {
    }
    /*public Setting(String websiteTitle, String websiteKeyword, String websiteLogo, String websiteDescription, String websiteAuthor, String websiteFooter, String websiteOwner, String FM, String version) {
        this.websiteTitle = websiteTitle;
        this.websiteKeyword = websiteKeyword;
        this.websiteLogo = websiteLogo;
        this.websiteDescription = websiteDescription;
        this.websiteAuthor = websiteAuthor;
        this.websiteFooter = websiteFooter;
        this.websiteOwner = websiteOwner;
        this.FM = FM;
        this.version = version;
    }*/

    public String getWebsiteTitle() {
        return websiteTitle;
    }

    public void setWebsiteTitle(String websiteTitle) {
        this.websiteTitle = websiteTitle;
    }

    public String getWebsiteKeyword() {
        return websiteKeyword;
    }

    public void setWebsiteKeyword(String websiteKeyword) {
        this.websiteKeyword = websiteKeyword;
    }

    public String getWebsiteLogo() {
        return websiteLogo;
    }

    public void setWebsiteLogo(String websiteLogo) {
        this.websiteLogo = websiteLogo;
    }

    public String getWebsiteDescription() {
        return websiteDescription;
    }

    public void setWebsiteDescription(String websiteDescription) {
        this.websiteDescription = websiteDescription;
    }

    public String getWebsiteAuthor() {
        return websiteAuthor;
    }

    public void setWebsiteAuthor(String websiteAuthor) {
        this.websiteAuthor = websiteAuthor;
    }

    public String getWebsiteFooter() {
        return websiteFooter;
    }

    public void setWebsiteFooter(String websiteFooter) {
        this.websiteFooter = websiteFooter;
    }

    public String getWebsiteOwner() {
        return websiteOwner;
    }

    public void setWebsiteOwner(String websiteOwner) {
        this.websiteOwner = websiteOwner;
    }

    public String getFM() {
        return FM;
    }

    public void setFM(String FM) {
        this.FM = FM;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
