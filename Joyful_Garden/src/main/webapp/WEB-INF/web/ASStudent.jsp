<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Activity Sign</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 80%;
        margin: 50px auto;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        overflow: hidden;
    }
    h2 {
        background-color: #343a40;
        color: #fff;
        margin: 0;
        padding: 20px;
        text-align: center;
        text-transform: uppercase;
        border-top-left-radius: 8px;
        border-top-right-radius: 8px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table th, table td {
        padding: 15px;
        border-bottom: 1px solid #ddd;
        text-align: center; 
    }
    table th {
        background-color: #343a40;
        color: #fff;
        text-transform: uppercase;
    }
    table tbody tr:nth-child(even) {
        background-color: #f8f9fa;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>報名學生資料表</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>活動名稱</th>
                    <th>報名學生</th>
                   
                    <th>報名日期</th>
                    <th>報名信箱</th>
                    <th>報名手機</th>
                </tr>
            </thead>
              <c:forEach items="${asStudents}" var="aaa">
            <tr>           	
            	<td>${aaa.activity.activityName}</td>
                <td>${aaa.student.name}</td>
                <td>${aaa.registerDate.substring(0, 10)}</td>       
                <td>${aaa.student.email}</td>  
                <td>${aaa.student.phone}</td>  
            </tr>
        </c:forEach>
        </table>
    </div>
</body>
</html>
