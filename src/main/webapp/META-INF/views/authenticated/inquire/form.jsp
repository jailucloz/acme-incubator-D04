<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="authenticated.inquires.form.label.title" path="title"/>
		<acme:form-moment code="authenticated.inquires.form.label.creationMoment" path="creationMoment" readonly="true"/>
	
	<acme:form-moment code="authenticated.inquires.form.label.deadline" path="deadline"/>
	<acme:form-textarea code="authenticated.inquires.form.label.paragraphs" path="paragraphs"/>
	<acme:form-money code="authenticated.inquires.form.label.minMoney" path="minMoney"/>
	<acme:form-money code="authenticated.inquires.form.label.maxMoney" path="maxMoney"/>
	<acme:form-textbox code="authenticated.inquires.form.label.email" path="email"/>
	
	
	
	<acme:form-return code="authenticated.inquires.form.button.return"/>
</acme:form>
