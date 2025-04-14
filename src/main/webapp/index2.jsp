<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDateTime, java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Starbucks</title>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Gowun Dodum', sans-serif;
            background-color: #f4fdfb;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 720px;
            margin: 40px auto;
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
            color: #444;
        }

        .time {
            margin-top: 20px;
            font-size: 0.95em;
            color: #666;
        }

        .slideshow-container {
            position: relative;
            width: 100%;
            height: 300px;
            overflow: hidden;
            border-radius: 15px;
            margin-bottom: 30px;
        }

        .slide {
            position: absolute;
            width: 100%;
            height: 100%;
            opacity: 0;
            transition: opacity 1s ease-in-out;
            z-index: 0;
        }

        .slide img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 15px;
        }

        .slide.active {
            opacity: 1;
            z-index: 1;
        }

        .dots-container {
            text-align: center;
            position: absolute;
            bottom: 15px;
            width: 100%;
            z-index: 2;
        }

        .dot {
            height: 10px;
            width: 10px;
            margin: 0 4px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
        }

        .dot.active {
            background-color: #00704a;
        }
    </style>
</head>
<body>

<%@ include file="menu.jsp" %>

<div class="container">
    <div class="slideshow-container">
        <div class="slide"><img src="img/ssg_1.jpg" alt="슬라이드 이미지1"></div>
        <div class="slide"><img src="img/ssg_2.jpg" alt="슬라이드 이미지2"></div>
        <div class="slide"><img src="img/ssg_3.jpg" alt="슬라이드 이미지3"></div>
        <div class="slide"><img src="img/ssg_4.jpg" alt="슬라이드 이미지4"></div>

        <div class="dots-container">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>
    </div>

    <h1>스타벅스에 오신 것을 환영합니다!</h1>
    <p>당신의 하루가 향긋해지는 순간, 스타벅스에서 시작하세요.</p>

    <div class="time">
        <% 
            LocalDateTime now = LocalDateTime.now();
            String formatted = now.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 a hh:mm:ss"));
            out.println("현재 접속 시각: " + formatted);
        %>
    </div>
</div>

<%@ include file="footer.jsp" %>

<script>
    window.addEventListener("DOMContentLoaded", () => {
        let slideIndex = 0;
        const slides = document.getElementsByClassName("slide");
        const dots = document.getElementsByClassName("dot");

        function showSlides() {
            for (let i = 0; i < slides.length; i++) {
                slides[i].classList.remove("active");
                dots[i].classList.remove("active");
            }
            slides[slideIndex].classList.add("active");
            dots[slideIndex].classList.add("active");

            slideIndex = (slideIndex + 1) % slides.length;
            setTimeout(showSlides, 3000);
        }

        slides[0].classList.add("active");
        dots[0].classList.add("active");
        setTimeout(showSlides, 3000);
    });
</script>

</body>
</html>
