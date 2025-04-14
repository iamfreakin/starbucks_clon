<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String id = request.getParameter("userid");
    String pw = request.getParameter("password");

 	// 임시 계정 정보 (실제에서는 DB와 비교)
    String validId = "admin";
    String validPw = "1234";

    if (id != null && pw != null && id.equals(validId) && pw.equals(validPw)) {
        session.setAttribute("userid", id);
        session.setAttribute("password", pw);
    } else if (session.getAttribute("userid") == null) {
        response.sendRedirect("login.jsp?error=1");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인 화면</title>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Gowun Dodum', sans-serif;
            background-color: #f4fdfb;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 100px auto;
            background-color: white;
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.08);
            text-align: center;
        }

        h1 {
            color: #00704a;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1em;
            color: #444;
            margin-bottom: 30px;
        }

        .logout-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #00704a;
            color: white;
            text-decoration: none;
            border-radius: 10px;
            font-weight: bold;
        }

        .logout-btn:hover {
            background-color: #005f3b;
        }
    </style>
</head>
<body>

<%@ include file="menu.jsp" %>

<div class="container">
    <h1><%= session.getAttribute("userid") %>님, 환영합니다!</h1>
    <p>성공적으로 로그인하셨습니다.<br>스타벅스와 함께 향긋한 하루를 시작하세요!</p>

    <a href="logout.jsp" class="logout-btn">로그아웃</a>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
