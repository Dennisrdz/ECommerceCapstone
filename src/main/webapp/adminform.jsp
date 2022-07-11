<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--
  Created by IntelliJ IDEA.
  User: dsike
  Date: 7/10/2022
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.hcl.ecommerce.Model.User" %>
<%@ page import="com.hcl.ecommerce.Dao.UserDao" %>
<%@ page import="com.hcl.ecommerce.Model.DbCon" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  User auth = (User) request.getSession().getAttribute("auth");
  if (auth != null) {
    request.setAttribute("auth", auth);
  }

  UserDao ud = new UserDao(DbCon.getConnection());
  List<User> users = ud.getAllUsers();
%>
<html>
<head>
  <title>Title</title>
  <%@include file="includes/header.jsp" %>  <!--BoostStrap CSS CDN -->
</head>
<body>
<%@include file="includes/navbar.jsp" %>
<div class="container col-md-5">
  <div class="card">
    <div class="card-body">
        <form action="insert-user" method="post">
          <caption>
            <h2>
              <c:if test="${user == null}">
                Add New User
              </c:if>
            </h2>
          </caption>

          <c:if test="${user != null}">
            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
          </c:if>

          <fieldset class="form-group">
            <label>User Name</label> <input type="text"
                                            value="<c:out value='${user.name}' />" class="form-control"
                                            name="name" required="required">
          </fieldset>

          <fieldset class="form-group">
            <label>User Email</label> <input type="email"
                                             value="<c:out value='${user.email}' />" class="form-control"
                                             name="email" required="required">
          </fieldset>

          <fieldset class="form-group">
            <label>Password</label> <input type="text" minlength="5"
                                           value="<c:out value='${user.password}' />" class="form-control"
                                           name="password" required="required">
          </fieldset>

<%--          <fieldset class="form-group">--%>
<%--            <label>User Type</label>--%>
<%--            <br>--%>
<%--            <select class="form-group" aria-label="Default select example" name="usertype" required="required">--%>
<%--              <option value='${null}'>Select User Type</option>--%>
<%--              <option value="Admin">Admin</option>--%>
<%--              <option value="Client">Client</option>--%>
<%--            </select>--%>
<%--          </fieldset>--%>

          <button type="submit" class="btn btn-success">Save</button>
        </form>
    </div>
  </div>
</div>
</body>
</html>
