<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books Store Application</title>
</head>
<body bgcolor="">
    <center style="color: maroon;">
        <h1>Books Management</h1>
        <h2>
            <a style="color: brown;" href="/new">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a  style="color: brown;" href="/list">List All Books</a>
             
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2 style="color: crimson;">List of Books</h2></caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th style="color: red;">Actions</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                        <a href="/edit?id=<c:out value='${book.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/delete?id=<c:out value='${book.id}' />">Delete</a> 
                        <a href="Download.jsp">Download</a>
                                           
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>