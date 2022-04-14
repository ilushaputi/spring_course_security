<%--
  Created by IntelliJ IDEA.
  User: Ilya
  Date: 14.04.2022
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>

<h3>Information for all employees</h3>
<br><br>

<security:authorize access="hasRole('HR')">
<input type="button" value="Salary"
            onclick="window.location.href = 'hr_info'">
Only for HR staff
</security:authorize>

<br><br>

<security:authorize access="hasRole('MANAGER')">
<input type="button" value="Performance"
       onclick="window.location.href = 'manager_info'">
Only for HR managers
</security:authorize>

</body>
</html>
