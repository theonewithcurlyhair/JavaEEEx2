<%-- 
    Document   : index.jsp
    Created on : Jan. 9, 2020, 10:07:09 a.m.
    Author     : Nik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            String countList = "";
            String msg = "";
            String valueToStart = "";
            String valueToCount = "";
            
            try {
                //Getting querystring params
                if(request.getParameter("start") != null){
                    valueToStart = request.getParameter("start");
                }
                
                if(request.getParameter("start") != null){
                    valueToCount = request.getParameter("countto");
                }                
            } catch (Exception e) {
                msg = "<p style='color:red;'>An Error occured</p>";
                msg += "<p style='color:red;'>" + e.getMessage() + "</p>";
            }
        %>
        
        <%= valueToStart %>
        <%= valueToCount %>
        <%= msg %>
    </body>
</html>
