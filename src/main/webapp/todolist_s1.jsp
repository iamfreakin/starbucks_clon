<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>스타벅스 소개</title>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Gowun Dodum', sans-serif;
            background-color: #f4fdfb;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            max-width: 720px;
            margin: 60px auto;
            background-color: white;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0,0,0,0.08);
            text-align: center;
        }

        h1 {
            color: #00704a;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1em;
            line-height: 1.6;
        }

        img {
            width: 100%;
            max-width: 600px;
            border-radius: 15px;
            margin: 30px 0;
        }

        iframe {
            width: 100%;
            max-width: 600px;
            height: 340px;
            border: none;
            border-radius: 15px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<%@ include file="menu.jsp" %>

<div class="container">
    <h1>☕ 스타벅스에 대하여</h1>

    <p>
        스타벅스는 1971년 미국 시애틀에서 시작된 세계적인 커피 브랜드로,<br>
        고품질 원두, 따뜻한 서비스, 그리고 감성적인 공간을 제공합니다.<br>
        단순한 음료가 아닌 경험을 파는 브랜드, 그것이 바로 스타벅스입니다.
    </p>

    <img src="https://i.namu.wiki/i/7pcyf2iieagVp6BxkteBSbltdANNR7YRwpdU2bSZ04NG8iK_nYfETGvN8uOdVTB9rnWB92Nq6s4Hn9RR774m2VmNjrGAjlZQvXfFBLQ7me5dfDE01HYS72GAQ8ji_4aTnM2SRbv_QFnlsQQSnChx7Q.svg" alt="스타벅스 로고">

    <h2>📺 브랜드 영상</h2>
    <iframe src="https://www.youtube.com/embed/0HZ2vqXVy6k"
            title="스타벅스 광고 영상"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen>
    </iframe>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
