<%@ page import="projet.Sondage" %>



<div class="fieldcontain ${hasErrors(bean: sondageInstance, field: 'dateDebut', 'error')} required">
	<label for="dateDebut">
		<g:message code="sondage.dateDebut.label" default="Date Debut" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateDebut" precision="day"  value="${sondageInstance?.dateDebut}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: sondageInstance, field: 'dateFin', 'error')} required">
	<label for="dateFin">
		<g:message code="sondage.dateFin.label" default="Date Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateFin" precision="day"  value="${sondageInstance?.dateFin}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: sondageInstance, field: 'enseignement', 'error')} required">
	<label for="enseignement">
		<g:message code="sondage.enseignement.label" default="Enseignement" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="enseignement" name="enseignement.id" from="${projet.Enseignement.list()}" optionKey="id" required="" value="${sondageInstance?.enseignement?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sondageInstance, field: 'reponses', 'error')} ">
	<label for="reponses">
		<g:message code="sondage.reponses.label" default="Reponses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${sondageInstance?.reponses?}" var="r">
    <li><g:link controller="reponse" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="reponse" action="create" params="['sondage.id': sondageInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'reponse.label', default: 'Reponse')])}</g:link>
</li>
</ul>


</div>

