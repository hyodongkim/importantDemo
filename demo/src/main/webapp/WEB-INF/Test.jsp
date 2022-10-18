<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html lang="UTF-8">
<head>
    <title>회원 목록</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        *{
            margin: 0; padding: 0;
        }
        #wrap{
            position: absolute;
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: row;
            align-content: flex-start;
        }
        a img{
            height: 150px;
            width: 150px;
        }
        #logo{
            height: 150px;
        }
        nav{
            width: 150px;
            height: 100%;
            display: flex;
            flex-direction:column;
            justify-content: space-between;
        }
        #nav1{
            display: flex;
            flex-direction: column;
            height: 400px;
            width: 150px;
            list-style-type: none;
        }
        #nav2{
            display: flex;
            flex-direction: column;
            height: 100px;
            width: 150px;
            list-style-type: none;
        }
        ul li{
            display: flex;
            width: 150px;
            height: 50px;
            align-items: center;
            cursor: pointer;
            border: black 1px solid;
        }
        li a{
            text-decoration: none;
            font-size: 16pt;
            color: black;
        }
    </style>
 
</head>
<body>
    <div id="wrap">
        <nav>
            <ul id="nav1">
             
            </ul>
            <ul id="nav2">
            </ul>
        </nav>
        
        <table class="table table-hover">
            <Thead>
                <tr>
                    <th>아이디</th>
                    <th>저자</th>
                    <th>제목</th>
                    <th>내용</th>
                    
                    
                </tr>
            </Thead>
            <c:forEach var="hp_member" items="${list}">
                <tr>
                    <td>${hp_member.id}</td>
                    <td>${hp_member.writer}</td>
                    <td>${hp_member.title}</td>
                    <td>${hp_member.content}</td>
            
                    <td>
                    <a href="update?id=${hp_member.id}">내용변경</a>
                        
                        <a href="delete?id=${hp_member.id}">삭제하기</a>
                    </td>
                </tr>
            </c:forEach>
            
          
        </table>
          <a href="insert">추가</a>
    </div>
    
</body>
</html>