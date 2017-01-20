<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<c:set var="title">
	<spring:message code="home.pageTitle" /> | <spring:message code="project.title" />
</c:set>
<c:set var="websitetitle">
	${setting.getWebsiteTitle()}
</c:set>
<c:set var="footer">
	<span class="blue bolder">${setting.getWebsiteTitle()}</span>
    							${setting.getWebsiteFooter()}
    							-
    							نسخه:${setting.getVersion()}
</c:set>
<c:set var="author">
${setting.getWebsiteAuthor()}
</c:set>
<c:set var="desc">
${setting.getWebsiteDescription()}
</c:set>
<c:set var="keyword">
${setting.getWebsiteKeyword()}
</c:set>
<t:admin title="${title}" websitetitle="${websitetitle}" footer="${footer}" author="${author}" desc="${desc}" keyword="${keyword}">
	<jsp:body>
		    صفحه اصلی مدیریت محتوای ناشر
	</jsp:body>
</t:admin>