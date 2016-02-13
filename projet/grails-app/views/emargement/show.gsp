
<%@ page import="projet.Emargement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emargement.label', default: 'Emargement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-emargement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-emargement" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list emargement">
			
				<g:if test="${emargementInstance?.aRepondu}">
				<li class="fieldcontain">
					<span id="aRepondu-label" class="property-label"><g:message code="emargement.aRepondu.label" default="A Repondu" /></span>
					
						<span class="property-value" aria-labelledby="aRepondu-label"><g:formatBoolean boolean="${emargementInstance?.aRepondu}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${emargementInstance?.enseignement}">
				<li class="fieldcontain">
					<span id="enseignement-label" class="property-label"><g:message code="emargement.enseignement.label" default="Enseignement" /></span>
					
						<span class="property-value" aria-labelledby="enseignement-label"><g:link controller="enseignement" action="show" id="${emargementInstance?.enseignement?.id}">${emargementInstance?.enseignement?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${emargementInstance?.utilisateur}">
				<li class="fieldcontain">
					<span id="utilisateur-label" class="property-label"><g:message code="emargement.utilisateur.label" default="Utilisateur" /></span>
					
						<span class="property-value" aria-labelledby="utilisateur-label"><g:link controller="utilisateur" action="show" id="${emargementInstance?.utilisateur?.id}">${emargementInstance?.utilisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:emargementInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${emargementInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
