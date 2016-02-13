<%@ page import="projet.Emargement" %>



<div class="fieldcontain ${hasErrors(bean: emargementInstance, field: 'aRepondu', 'error')} ">
	<label for="aRepondu">
		<g:message code="emargement.aRepondu.label" default="A Repondu" />
		
	</label>
	<g:checkBox name="aRepondu" value="${emargementInstance?.aRepondu}" />

</div>

<div class="fieldcontain ${hasErrors(bean: emargementInstance, field: 'enseignement', 'error')} required">
	<label for="enseignement">
		<g:message code="emargement.enseignement.label" default="Enseignement" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="enseignement" name="enseignement.id" from="${projet.Enseignement.list()}" optionKey="id" required="" value="${emargementInstance?.enseignement?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emargementInstance, field: 'utilisateur', 'error')} required">
	<label for="utilisateur">
		<g:message code="emargement.utilisateur.label" default="Utilisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utilisateur" name="utilisateur.id" from="${projet.Utilisateur.list()}" optionKey="id" required="" value="${emargementInstance?.utilisateur?.id}" class="many-to-one"/>

</div>

