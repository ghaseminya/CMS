<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<c:set var="title">
	<spring:message code="article-edit.pageTitle" /> | <spring:message code="project.title" />
</c:set>

<t:template title="${title}">
	<jsp:body>
		<form:form method="post" modelAttribute="category" data-toggle="validator">
		
			<!-- Article title -->
			<div class="form-group">
				<h4><form:errors path="name" class="label label-danger" /></h4>
				<div class="help-block with-errors"></div>
				<spring:bind path="name">
					<input id="category-name" name="name" type="text" class="form-control" maxlength="100"
						placeholder="<spring:message code="article.title" />" value="${category.name}"
						required data-error="<spring:message code="validation.article.title" />">
				</spring:bind>
			</div>
			

			
			<!-- Buttons -->
		  	<button class="btn btn-primary" type="submit">
		  		<spring:message code="article-edit.saveButton" /></button>
		  	<c:set var="categId" value="${category.id}" />
		  	<c:if test="${empty categId}">
				<c:set var="categId" value="0" />
			</c:if>
		  	<a class="btn btn-default" href="${pageContext.request.contextPath}/article/${categId}/cancel">
		  		<spring:message code="article-edit.cancelButton" />
		  	</a>
		</form:form>


	</jsp:body>
</t:template>