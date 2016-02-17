<%@ page import="projet.Enseignement" %>



<div class="fieldcontain ${hasErrors(bean: enseignementInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="enseignement.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${enseignementInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enseignementInstance, field: 'sondage', 'error')} ">
	<label for="sondage">
		<g:message code="enseignement.sondage.label" default="Sondage" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${enseignementInstance?.sondage?}" var="s">
    <li><g:link controller="sondage" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sondage" action="create" params="['enseignement.id': enseignementInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sondage.label', default: 'Sondage')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: enseignementInstance, field: 'emargement', 'error')} ">
	<label for="emargement">
		<g:message code="enseignement.emargement.label" default="Emargement" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${enseignementInstance?.emargement?}" var="e">
    <li><g:link controller="emargement" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="emargement" action="create" params="['enseignement.id': enseignementInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'emargement.label', default: 'Emargement')])}</g:link>
</li>
</ul>


</div>

