<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false"
        import="com.day.cq.commons.Doctype"%>
<cq:defineObjects/>
<%
    if (currentDesign != null) {
        currentDesign.getDoctype(currentStyle).toRequest(request);
    }
%>
<%= Doctype.fromRequest(request).getDeclaration() %>
<html>

    <head>
        <cq:includeClientLib categories="cdgd-main"/>
    </head>

    <body>
