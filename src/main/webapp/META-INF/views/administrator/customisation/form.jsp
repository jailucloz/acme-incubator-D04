<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="administrator.customisation.form.label.spam" path="spam"/>
	<acme:form-textbox code="administrator.customisation.form.label.threshold" path="threshold"/>
	<acme:form-textbox code="administrator.customisation.form.label.activitySectors" path="activitySectors"/>
	
	<acme:form-submit test="${command == 'show'}"
		code="administrator.customisation.form.button.update"
		action="/administrator/customisation/update"/>

	<acme:form-submit test="${command == 'update'}"
		code="administrator.customisation.form.button.update"
		action="/administrator/customisation/update"/>

	<acme:form-return code="administrator.customisation.form.button.return"/>
</acme:form>  