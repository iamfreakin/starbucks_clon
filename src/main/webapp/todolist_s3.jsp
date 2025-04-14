<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>조선대학교</title>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            background-color: #f4fdfb;
            font-family: 'Gowun Dodum', sans-serif;
        }

        .container {
            max-width: 1000px;
            margin: 40px auto;
            background-color: white;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.08);
        }

        h1 {
            text-align: center;
            color: #00704a;
            margin-bottom: 20px;
        }

        iframe {
            width: 100%;
            height: 600px;
            border: none;
            border-radius: 10px;
        }
    </style>
</head>
<body>

<%@ include file="menu.jsp" %>

<div class="container">
    <h1>조선대학교 홈페이지</h1>
    <iframe src="https://www.chosun.ac.kr"></iframe>
</div>
<p>조선대학교 홈페이지는 외부 페이지 내에서 직접 표시할 수 없습니다.<br>
아래 버튼을 클릭하여 새 창에서 열어보세요.</p>
<a href="https://www.chosun.ac.kr" target="_blank" class="btn">조선대학교 바로가기</a>
<%@ include file="footer.jsp" %>
</body>
</html>
