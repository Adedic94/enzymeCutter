<%--
  Created by IntelliJ IDEA.
  User: Armin Dedic
  Date: 12-1-2018
  Time: 00:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>RestrictionEnzyme Cutter Results</h1>
    <p>DNA provided by the user:</p>
    <h3>${requestScope.servletMessage}</h3>
    <h3>${requestScope.resultsMessage}</h3>
</body>
</html>
