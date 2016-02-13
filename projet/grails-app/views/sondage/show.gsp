
<%@ page import="projet.Sondage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sondage.label', default: 'Sondage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sondage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sondage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sondage">
			
				<g:if test="${sondageInstance?.dateDebut}">
				<li class="fieldcontain">
					<span id="dateDebut-label" class="property-label"><g:message code="sondage.dateDebut.label" default="Date Debut" /></span>
					
						<span class="property-value" aria-labelledby="dateDebut-label"><g:formatDate date="${sondageInstance?.dateDebut}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sondageInstance?.dateFin}">
				<li class="fieldcontain">
					<span id="dateFin-label" class="property-label"><g:message code="sondage.dateFin.label" default="Date Fin" /></span>
					
						<span class="property-value" aria-labelledby="dateFin-label"><g:formatDate date="${sondageInstance?.dateFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sondageInstance?.enseignement}">
				<li class="fieldcontain">
					<span id="enseignement-label" class="property-label"><g:message code="sondage.enseignement.label" default="Enseignement" /></span>
					
						<span class="property-value" aria-labelledby="enseignement-label"><g:link controller="enseignement" action="show" id="${sondageInstance?.enseignement?.id}">${sondageInstance?.enseignement?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sondageInstance?.reponses}">
				<li class="fieldcontain">
					<span id="reponses-label" class="property-label"><g:message code="sondage.reponses.label" default="Reponses" /></span>
					
						<g:each in="${sondageInstance.reponses}" var="r">
						<span class="property-value" aria-labelledby="reponses-label"><g:link controller="reponse" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sondageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sondageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
