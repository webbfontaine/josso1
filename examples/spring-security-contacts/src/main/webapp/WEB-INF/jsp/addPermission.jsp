<%--
  ~ JOSSO: Java Open Single Sign-On
  ~
  ~ Copyright 2004-2009, Atricore, Inc.
  ~
  ~ This is free software; you can redistribute it and/or modify it
  ~ under the terms of the GNU Lesser General Public License as
  ~ published by the Free Software Foundation; either version 2.1 of
  ~ the License, or (at your option) any later version.
  ~
  ~ This software is distributed in the hope that it will be useful,
  ~ but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
  ~ Lesser General Public License for more details.
  ~
  ~ You should have received a copy of the GNU Lesser General Public
  ~ License along with this software; if not, write to the Free
  ~ Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
  ~ 02110-1301 USA, or see the FSF site: http://www.fsf.org.
  ~
  --%>

<%@ include file="/WEB-INF/jsp/include.jsp" %>
<html>
<head><title>Add Permission</title></head>
<body>
<h1>Add Permission</h1>
<form method="post">
  <table width="95%" bgcolor="f8f8ff" border="0" cellspacing="0" cellpadding="5">
    <tr>
      <td alignment="right" width="20%">Contact:</td>
      <td width="60%"><c:out value="${addPermission.contact}"/></td>
    </tr>
    <tr>
      <td alignment="right" width="20%">Recipient:</td>
      <spring:bind path="addPermission.recipient">
        <td width="20%">
		    <select name="<c:out value="${status.expression}"/>">
		      <c:forEach var="thisRecipient" items="${recipients}">
		        <option <c:if test="${thisRecipient.key == status.value}">selected</c:if> value="<c:out value="${thisRecipient.key}"/>">
		        <c:out value="${thisRecipient.value}"/></option>
			    </c:forEach>
		    </select>
        </td>
        <td width="60%">
          <font color="red"><c:out value="${status.errorMessage}"/></font>
        </td>
      </spring:bind>
    </tr>
    <tr>
      <td alignment="right" width="20%">Permission:</td>
      <spring:bind path="addPermission.permission">
        <td width="20%">
		    <select name="<c:out value="${status.expression}"/>">
		      <c:forEach var="thisPermission" items="${permissions}">
		        <option <c:if test="${thisPermission.key == status.value}">selected</c:if> value="<c:out value="${thisPermission.key}"/>">
		        <c:out value="${thisPermission.value}"/></option>
			    </c:forEach>
		    </select>
        </td>
        <td width="60%">
          <font color="red"><c:out value="${status.errorMessage}"/></font>
        </td>
      </spring:bind>
    </tr>
  </table>
  <br>
  <spring:hasBindErrors name="webContact">
    <b>Please fix all errors!</b>
  </spring:hasBindErrors>
  <br><br>
  <input name="execute" type="submit" alignment="center" value="Execute">
</form>
<p>
<A HREF="<c:url value="adminPermission.htm"><c:param name="contactId" value="${addPermission.contact.id}"/></c:url>">Admin Permission</A> <a href="<c:url value="index.htm"/>">Manage</a>
</body>
</html>
