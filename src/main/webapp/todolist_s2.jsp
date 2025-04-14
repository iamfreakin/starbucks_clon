<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>스타벅스 음료 메뉴</title>
    <!-- 웹폰트 추가 -->
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Gowun Dodum', sans-serif;
            background-color: #f4fdfb;
            margin: 0;
            padding: 30px;
            color: #333;
        }

        .container {
            max-width: 720px;
            margin: auto;
            background-color: #ffffff;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 150, 136, 0.1);
        }

        h1 {
            text-align: center;
            color: #00704a;
            margin-bottom: 40px;
        }

        h2 {
            font-size: 1.2em;
            color: #444;
            background-color: #e0f2f1;
            padding: 8px 12px;
            border-radius: 10px;
            margin-top: 40px;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            margin-top: 10px;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px dashed #ccc;
        }

        th {
            background-color: #e8f5e9;
            color: #00704a;
            text-align: left;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        td.price {
            text-align: right;
            color: #555;
        }

        tr:last-child td {
            border-bottom: none;
        }
    </style>
</head>
<body>

<%@ include file="menu.jsp" %>

<div class="container">
    <h1>🌿 스타벅스 음료 메뉴</h1>

    <!-- 커피 카테고리 -->
    <h2>☕ 커피</h2>
    <table>
        <tr><th>메뉴</th><th>가격</th></tr>
        <tr><td>아메리카노</td><td class="price">₩4,500</td></tr>
        <tr><td>카페 라떼</td><td class="price">₩5,000</td></tr>
        <tr><td>카푸치노</td><td class="price">₩5,000</td></tr>
        <tr><td>카라멜 마키아또</td><td class="price">₩5,800</td></tr>
    </table>

    <!-- 프라푸치노 카테고리 -->
    <h2>❄ 프라푸치노</h2>
    <table>
        <tr><th>메뉴</th><th>가격</th></tr>
        <tr><td>자바 칩 프라푸치노</td><td class="price">₩6,300</td></tr>
        <tr><td>카라멜 프라푸치노</td><td class="price">₩6,100</td></tr>
    </table>

    <!-- 티 (TEAVANA) -->
    <h2>🍵 티 (TEAVANA)</h2>
    <table>
        <tr><th>메뉴</th><th>가격</th></tr>
        <tr><td>유자 민트 티</td><td class="price">₩5,000</td></tr>
        <tr><td>히비스커스 블렌드</td><td class="price">₩4,800</td></tr>
    </table>

    <!-- 기타 음료 -->
    <h2>🥤 기타 음료</h2>
    <table>
        <tr><th>메뉴</th><th>가격</th></tr>
        <tr><td>콜드 브루</td><td class="price">₩5,300</td></tr>
        <tr><td>스팀 밀크</td><td class="price">₩4,200</td></tr>
    </table>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
