

<%@ page import="plan.events.Sponsorship" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'sponsorship.label', default: 'Sponsorship')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${sponsorshipInstance}">
            <div class="errors">
                <g:renderErrors bean="${sponsorshipInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="event"><g:message code="sponsorship.event.label" default="Event" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sponsorshipInstance, field: 'event', 'errors')}">
                                    <g:select name="event.id" from="${plan.events.TekEvent.list()}" optionKey="id" value="${sponsorshipInstance?.event?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sponsor"><g:message code="sponsorship.sponsor.label" default="Sponsor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sponsorshipInstance, field: 'sponsor', 'errors')}">
                                    <g:select name="sponsor.id" from="${plan.events.Sponsor.list()}" optionKey="id" value="${sponsorshipInstance?.sponsor?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contributionType"><g:message code="sponsorship.contributionType.label" default="Contribution Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sponsorshipInstance, field: 'contributionType', 'errors')}">
                                    <g:select name="contributionType" from="${sponsorshipInstance.constraints.contributionType.inList}" value="${sponsorshipInstance?.contributionType}" valueMessagePrefix="sponsorship.contributionType"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="sponsorship.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sponsorshipInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${sponsorshipInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="sponsorship.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sponsorshipInstance, field: 'notes', 'errors')}">
                                    <g:textArea name="notes" cols="40" rows="5" value="${sponsorshipInstance?.notes}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
