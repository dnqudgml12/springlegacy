<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>게시글 수정</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style>
        form {
            width: 500px;
            margin: 40px auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #fefefe;
        }
        label {
            display: block;
            margin-top: 12px;
            font-weight: bold;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 6px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            margin-top: 15px;
            padding: 8px 16px;
        }
    </style>
</head>
<body>
<h2 style="text-align: center;">게시글 수정</h2>

<form action="edit" method="post">
    <!-- 수정할 게시글 ID를 hidden으로 전달 -->
    <input type="hidden" name="id" value="${board.id}" />

    <label for="title">제목:</label>
    <input type="text" name="title" id="title" value="${board.title}" />

    <label for="content">내용:</label>
    <textarea name="content" id="content" rows="6">${board.content}</textarea>

    <label for="writer">작성자:</label>
    <input type="text" name="writer" id="writer" value="${board.writer}" readonly="readonly" />

    <input type="submit" value="수정 완료" />
</form>
</body>
</html> 