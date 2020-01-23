<%-- 
    Document   : vechiclemakes
    Created on : Jan. 10, 2020, 11:39:56 a.m.
    Author     : Nik
--%>

<%@page import="com.nbcc.wmad.Make"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  Make make = null;
  Make queryMake = null;
  String result = "";
  
  String id = request.getParameter("id");
  if(id != null){
    make = new Make();
    queryMake = make.getMake(Integer.parseInt(id));
    result = "<h3><a>" + queryMake.getName() + "</a></h3><br><a href='vechiclemakes.jsp'>Back To List</a>";
    
  }else{
      make = new Make();
      for(Make m : make.getMakes()){
          result += "<a href='vechiclemakes.jsp?id=" + m.getId() + "'>" + m.getName() + "</a><br>";
      }
  }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%= result %>
    </body>
</html>
