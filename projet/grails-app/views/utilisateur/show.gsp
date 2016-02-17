
<%@ page import="projet.Utilisateur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-utilisateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-utilisateur" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list utilisateur">
			
				<g:if test="${utilisateurInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="utilisateur.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${utilisateurInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="utilisateur.prenom.label" default="Prenom" /></span>
					
						<span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${utilisateurInstance}" field="prenom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.identifiant}">
				<li class="fieldcontain">
					<span id="identifiant-label" class="property-label"><g:message code="utilisateur.identifiant.label" default="Identifiant" /></span>
					
						<span class="property-value" aria-labelledby="identifiant-label"><g:fieldValue bean="${utilisateurInstance}" field="identifiant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.mdp}">
				<li class="fieldcontain">
					<span id="mdp-label" class="property-label"><g:message code="utilisateur.mdp.label" default="Mdp" /></span>
					
						<span class="property-value" aria-labelledby="mdp-label"><g:fieldValue bean="${utilisateurInstance}" field="mdp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.droit}">
				<li class="fieldcontain">
					<span id="droit-label" class="property-label"><g:message code="utilisateur.droit.label" default="Droit" /></span>
					
						<span class="property-value" aria-labelledby="droit-label"><g:formatBoolean boolean="${utilisateurInstance?.droit}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.emargement}">
				<li class="fieldcontain">
					<span id="emargement-label" class="property-label"><g:message code="utilisateur.emargement.label" default="Emargement" /></span>
					
						<g:each in="${utilisateurInstance.emargement}" var="e">
						<span class="property-value" aria-labelledby="emargement-label"><g:link controller="emargement" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:utilisateurInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${utilisateurInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
