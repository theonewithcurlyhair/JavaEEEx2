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
            String countList = "<ul>";
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

                if(!valueToStart.equals("") && !valueToCount.equals("")){
                    //using string params parse to int 
                    //do the business rule check
                    //start must be less than countto
                    //throw new exception
                    int start = Integer.parseInt(valueToStart);
                    int countTo = Integer.parseInt(valueToCount);
                    
                    if(start >= countTo){
                        throw new Exception("ValueToStart can't be greater than ValueToCountTo");
                    }
                    
                    //If good list for the items
                    for (int i = start; i <= countTo; i++) {
                        countList += "<li>" + i + "</li>";
                    }
                    countList += "</ul>";
                } else{ 
                    msg = "No query string parameters present";
                }
            } catch (Exception e) {
                msg = "<p style='color:red;'>An Error occured</p>";
                msg += "<p style='color:red;'>" + e.getMessage() + "</p>";
            }
        %>
        
        <%= valueToStart %>
        <%= valueToCount %>
        <%= countList %>
        <% if(!msg.equals(""))%><div style="background-color: pink; min-height: 20px;">
            <%= msg %>
        </div>
    </body>
</html>
