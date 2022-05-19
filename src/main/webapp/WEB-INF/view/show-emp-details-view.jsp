<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h2>Dear employee, you are WELCOME!!!</h2>
<br>
<br>
Your Name: ${employee.name}
<br>
Your Surname: ${employee.surname}
<br>
Your Salary: ${employee.salary}
<br>
Your Department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">

        <li>  ${lang}  </li>

    </c:forEach>

</ul>

<br>

Phone number: ${employee.phoneNumber}

<br>

Email: ${employee.email}


</body>
</html>