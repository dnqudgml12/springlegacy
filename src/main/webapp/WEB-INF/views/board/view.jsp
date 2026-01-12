<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>게시글 상세보기</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style>
        .container {
            width: 600px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #fefefe;
        }
        .board-info {
            margin-bottom: 20px;
        }
        .board-info div {
            margin: 10px 0;
            padding: 8px;
            border-bottom: 1px solid #eee;
        }
        .board-info label {
            font-weight: bold;
            display: inline-block;
            width: 80px;
        }
        .content {
            margin: 20px 0;
            padding: 15px;
            background-color: #f9f9f9;
            min-height: 100px;
            white-space: pre-wrap;
        }
        .buttons {
            text-align: center;
            margin-top: 20px;
        }
        .buttons a, .buttons button {
            display: inline-block;
            padding: 8px 16px;
            margin: 0 5px;
            text-decoration: none;
            border: 1px solid #ccc;
            background-color: #f0f0f0;
            color: #333;
        }
        .buttons a:hover, .buttons button:hover {
            background-color: #e0e0e0;
        }
        .delete-btn {
            background-color: #ff4444 !important;
            color: white !important;
        }
        .delete-btn:hover {
            background-color: #cc0000 !important;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 style="text-align: center;">게시글 상세보기</h2>
    
    <div class="board-info">
        <div>
            <label>제목:</label>
            <span><c:out value="${board.title}" /></span>
        </div>
        <div>
            <label>작성자:</label>
            <span><c:out value="${board.writer}" /></span>
        </div>
        <div>
            <label>작성일:</label>
            <span><fmt:formatDate value="${board.createdAt}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
        </div>
    </div>
    
    <div class="content">
        <c:out value="${board.content}" />
    </div>
    
    <div class="buttons">
        <a href="list">목록으로</a>
        <a href="edit?id=${board.id}">수정</a>
        <button class="delete-btn" onclick="if(confirm('정말 삭제하시겠습니까?')) { location.href='delete?id=${board.id}'; }">삭제</button>
    </div>
</div>
</body>
</html> 