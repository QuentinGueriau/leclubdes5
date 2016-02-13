<%@ page import="projet.Reponse" %>



<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'note', 'error')} required">
	<label for="note">
		<g:message code="reponse.note.label" default="Note" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="note" type="number" value="${reponseInstance.note}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: reponseInstance, field: 'sondage', 'error')} required">
	<label for="sondage">
		<g:message code="reponse.sondage.label" default="Sondage" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sondage" name="sondage.id" from="${projet.Sondage.list()}" optionKey="id" required="" value="${reponseInstance?.sondage?.id}" class="many-to-one"/>

</div>

