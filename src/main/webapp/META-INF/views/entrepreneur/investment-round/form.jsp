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

<acme:form readonly="true">

    <acme:form-textbox code="entrepreneur.investmentRound.form.label.title" path="title" />
    <acme:form-textbox code="entrepreneur.investmentRound.form.label.ticker" path="ticker" />
    <acme:form-moment  code="entrepreneur.investmentRound.form.label.creationMoment" path="creationMoment" />
    <acme:form-textbox code="entrepreneur.investmentRound.form.label.roundKind" path="roundKind" />
    <acme:form-textarea code="entrepreneur.investmentRound.form.label.description" path="description" />
    <acme:form-money code="entrepreneur.investmentRound.form.label.amount" path="amount" />
    <acme:form-textbox code="entrepreneur.investmentRound.form.label.additionalInformation" path="additionalInformation" />
    <acme:form-textbox code="entrepreneur.investmentRound.form.label.statement" path="statement" />
    <acme:form-textbox code="entrepreneur.investmentRound.form.label.offer" path="offer" />
    
    <acme:menu-suboption code="entrepreneur.investmentRound.form.label.workProgramme" action="/authenticated/activity/list"/>

	<acme:form-return code="entrepreneur.investmentRound.form.button.return" />
</acme:form> 