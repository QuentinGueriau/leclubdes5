
<%@ page import="projet.Emargement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emargement.label', default: 'Emargement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-emargement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-emargement" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="aRepondu" title="${message(code: 'emargement.aRepondu.label', default: 'A Repondu')}" />
					
						<th><g:message code="emargement.enseignement.label" default="Enseignement" /></th>
					
						<th><g:message code="emargement.utilisateur.label" default="Utilisateur" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${emargementInstanceList}" status="i" var="emargementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${emargementInstance.id}">${fieldValue(bean: emargementInstance, field: "aRepondu")}</g:link></td>
					
						<td>${fieldValue(bean: emargementInstance, field: "enseignement")}</td>
					
						<td>${fieldValue(bean: emargementInstance, field: "utilisateur")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${emargementInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
