<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="users" type="java.util.List<by.epam.entity.User>" scope="request"/>
<jsp:useBean id="payments" type="java.util.List<by.epam.entity.Payment>" scope="request"/>
<jsp:useBean id="cards" type="java.util.List<by.epam.entity.CreditCard>" scope="request"/>
<jsp:useBean id="admins" type="java.util.List<by.epam.entity.Admin>" scope="request"/>
<jsp:useBean id="accounts" type="java.util.List<by.epam.entity.Account>" scope="request"/>

<html>
<head>
    <title>Main</title>
</head>
<body>

<table border="1" width="40%" cellpadding="5">
    <caption>USERS</caption>
    <tr>
        <th>Name</th>
        <th>Card ids</th>
        <th>Password hash</th>
        <th>Authority level</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.name}</td>
            <td>${user.cardIds}</td>
            <td>${user.passwordHash}</td>
            <td>${user.authorityLevel}</td>
        </tr>
    </c:forEach>
</table>

<table border="1" width="80%" cellpadding="5">
    <caption>PAYMENTS</caption>
    <tr>
        <th>ID</th>
        <th>Number</th>
    </tr>
    <c:forEach var="payment" items="${payments}">
        <tr>
            <td>${payment.id}</td>
            <td>${payment.paymentNumber}</td>
        </tr>
    </c:forEach>
</table>

<table border="1" width="40%" cellpadding="5">
    <caption>CARDS</caption>
    <tr>
        <th>ID</th>
        <th>Number</th>
        <th>Validity</th>
        <th>Secret number</th>
        <th>Account id</th>
    </tr>
    <c:forEach var="card" items="${cards}">
        <tr>
            <td>${card.id}</td>
            <td>${card.cardNumber}</td>
            <td>${card.validity}</td>
            <td>${card.secretNumber}</td>
            <td>${card.account_id}</td>
        </tr>
    </c:forEach>
</table>

<table border="1" width="40%" cellpadding="5">
    <caption>ADMINS</caption>
    <tr>
        <th>Name</th>
        <th>Password hash</th>
        <th>Authority level</th>
    </tr>
    <c:forEach var="admin" items="${admins}">
        <tr>
            <td>${admin.name}</td>
            <td>${admin.passwordHash}</td>
            <td>${admin.authorityLevel}</td>
        </tr>
    </c:forEach>
</table>

<table border="1" width="40%" cellpadding="5">
    <caption>Accounts</caption>
    <tr>
        <th>ID</th>
        <th>Number</th>
        <th>Sum</th>
        <th>Blocked</th>
    </tr>
    <c:forEach var="account" items="${accounts}">
        <tr>
            <td>${account.id}</td>
            <td>${account.accountNumber}</td>
            <td>${account.sum}</td>
            <td>${account.blocked}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
