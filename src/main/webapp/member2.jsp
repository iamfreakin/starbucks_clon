<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Gowun Dodum', sans-serif;
            background-color: #f4fdfb;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 80px auto;
            background-color: white;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0,0,0,0.08);
        }

        h1 {
            text-align: center;
            color: #00704a;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-top: 15px;
            margin-bottom: 6px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 48%;
            padding: 10px;
            background-color: #00704a;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 15px;
            margin-top: 25px;
        }

        input[type="reset"] {
            background-color: #999;
        }

        input[type="submit"]:hover {
            background-color: #005f3b;
        }

        input[type="reset"]:hover {
            background-color: #777;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>

<%@ include file="menu.jsp" %>

<div class="container">
    <h1>회원가입</h1>

    <form action="mem_DB.jsp" method="post">
        <label for="userid">아이디 *</label>
        <input type="text" name="userid" id="userid" required>

        <label for="password">비밀번호 *</label>
        <input type="password" name="password" id="password" required>

        <label for="password_confirm">비밀번호 확인 *</label>
        <input type="password" name="password_confirm" id="password_confirm" required>

        <label for="email">이메일</label>
        <input type="email" name="email" id="email">

        <label for="phone">전화번호</label>
        <input type="tel" name="phone" id="phone">

        <div class="button-group">
            <input type="submit" value="가입하기">
            <input type="reset" value="다시입력">
        </div>
    </form>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
