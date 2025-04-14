<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Gowun Dodum', sans-serif;
            background-color: #f4fdfb;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 100px auto;
            background-color: white;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #00704a;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #00704a;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 15px;
        }

        input[type="submit"]:hover {
            background-color: #005f3b;
        }

        .links {
            text-align: center;
            margin-top: 15px;
        }

        .links a {
            margin: 0 8px;
            color: #00704a;
            text-decoration: none;
        }

        .links a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<%@ include file="menu.jsp" %>

<div class="container">
    <h1>로그인</h1>

    <% 
        String error = request.getParameter("error");
        if ("1".equals(error)) {
    %>
        <div class="error-message">아이디 또는 비밀번호가 올바르지 않습니다.</div>
    <% } %>

    <form action="main2.jsp" method="post">
        <label for="userid">아이디</label>
        <input type="text" name="userid" id="userid" required>

        <label for="password">비밀번호</label>
        <input type="password" name="password" id="password" required>

        <input type="submit" value="로그인">
    </form>

    <div class="links">
        <a href="index2.jsp">🏠 홈으로</a>
        <a href="member2.jsp">회원가입</a>
    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
