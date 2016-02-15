<%@ page import="projet.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'droit', 'error')} required">
	<label for="droit">
		<g:message code="utilisateur.droit.label" default="Droit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="droit" type="number" value="${utilisateurInstance.droit}" required=""/>

</div>
<!-- 
<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'emargement', 'error')} ">
	<label for="emargement">
		<g:message code="utilisateur.emargement.label" default="Emargement" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utilisateurInstance?.emargement?}" var="e">
    <li><g:link controller="emargement" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="emargement" action="create" params="['utilisateur.id': utilisateurInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'emargement.label', default: 'Emargement')])}</g:link>
</li>
</ul>


</div>
-->
<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'mdp', 'error')} required">
	<label for="mdp">
		<g:message code="utilisateur.mdp.label" default="Mdp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mdp" required="" value="${utilisateurInstance?.mdp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="utilisateur.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${utilisateurInstance?.nom}"/>

</div>

