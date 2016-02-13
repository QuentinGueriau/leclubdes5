
<%@ page import="projet.Enseignement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enseignement.label', default: 'Enseignement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-enseignement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-enseignement" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list enseignement">
			
				<g:if test="${enseignementInstance?.emargement}">
				<li class="fieldcontain">
					<span id="emargement-label" class="property-label"><g:message code="enseignement.emargement.label" default="Emargement" /></span>
					
						<g:each in="${enseignementInstance.emargement}" var="e">
						<span class="property-value" aria-labelledby="emargement-label"><g:link controller="emargement" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${enseignementInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="enseignement.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${enseignementInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enseignementInstance?.sondage}">
				<li class="fieldcontain">
					<span id="sondage-label" class="property-label"><g:message code="enseignement.sondage.label" default="Sondage" /></span>
					
						<span class="property-value" aria-labelledby="sondage-label"><g:link controller="sondage" action="show" id="${enseignementInstance?.sondage?.id}">${enseignementInstance?.sondage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:enseignementInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${enseignementInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
