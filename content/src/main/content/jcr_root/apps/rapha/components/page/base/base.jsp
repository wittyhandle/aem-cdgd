<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false"
        import="com.day.cq.commons.Doctype"%>
<%
    if (currentDesign != null) {
        currentDesign.getDoctype(currentStyle).toRequest(request);
    }
%>
<%= Doctype.fromRequest(request).getDeclaration() %>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <title>Carl DeTorres Graphic Design</title>
        <meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <cq:includeClientLib categories="cq.jquery"/>
        <cq:includeClientLib categories="cdgd-main"/>
    </head>

    <body>


        <div id="container">
            <cq:include script="header.jsp"/>
            <cq:include script="body.jsp"/>
            <cq:include script="footer.jsp"/>
        </div>



    </body>

</html>