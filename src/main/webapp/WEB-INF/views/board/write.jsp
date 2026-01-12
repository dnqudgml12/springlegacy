<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>글쓰기</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style>
        form {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }
        label {
            display: block;
            margin-top: 10px;
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
<h2 style="text-align: center;">게시글 작성</h2>

<form action="write" method="post">
    <label for="title">제목:</label>
    <input type="text" name="title" id="title" />

    <label for="content">내용:</label>
    <textarea name="content" id="content" rows="6"></textarea>

    <label for="writer">작성자:</label>
    <input type="text" name="writer" id="writer" />

    <input type="submit" value="작성" />
</form>
</body>
</html> 