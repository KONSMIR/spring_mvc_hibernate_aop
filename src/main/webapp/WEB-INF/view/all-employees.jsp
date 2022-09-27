<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<body>

<h2>All Employees</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">

        <c:url value="/updateInfo" var="updateButton">
            <c:param name="empID" value="${emp.id}"/>
        </c:url>
        <tr>
            <td> ${emp.name} </td>
            <td> ${emp.surname} </td>
            <td> ${emp.department} </td>
            <td> ${emp.salary} </td>
            <td>
                <input type="button" value="Update"
                       onclick="window.location.href = '${updateButton}'"/>
            </td>
        </tr>

    </c:forEach>

</table>

<br>

<input type="button" value="Add"
       onclick="window.location.href = 'addNewEmployee'"/>


</body>
</html>
