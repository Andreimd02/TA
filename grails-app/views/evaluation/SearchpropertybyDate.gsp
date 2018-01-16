<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="ta.Evaluation" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'evaluation.label', default: 'evaluation')}" />
    <title><g:message code="default.search.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-evaluation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">

    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>       
    </ul>
</div>

<div id="search-header">
    <h1>Search by Data</h1>
</div>
<div class="content scaffold-search" role="main">
    <g:form controller="evaluation" action="consult">
        <div id="search_evaluation">
            <label for="consult">
                <g:message code="evaluation.data.label" default="Data" />
                <span class="required-indicator">*</span>
            </label>
			<g:datePicker name="applicationDate" precision="day"  value="${evaluationInstance?.applicationDate}"  />
            <g:submitButton name="search" value="${message(code: 'default.button.search.label', default: 'Search')}" size = "20" />
        </div>
    </g:form>
</div>

<div id="list-evaluation" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

        	<g:sortableColumn property="origin" title="${message(code: 'evaluation.origin.label', default: 'Origin')}" />
					
			<g:sortableColumn property="value" title="${message(code: 'evaluation.value.label', default: 'Value')}" />
					
			<th><g:message code="evaluation.criterion.label" default="Criterion" /></th>
					
			<g:sortableColumn property="applicationDate" title="${message(code: 'evaluation.applicationDate.label', default: 'Application Date')}" />
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
</body>
</html>