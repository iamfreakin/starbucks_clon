<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<style>
    .nav-bar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #e0f2f1;
        padding: 12px 30px;
        font-family: 'Gowun Dodum', sans-serif;
        border-bottom: 2px solid #b2dfdb;
    }

    .nav-left a,
    .nav-right a {
        text-decoration: none;
        color: #333;
        font-weight: bold;
        margin: 0 10px;
        font-size: 16px;
    }

    .nav-left a.home {
        color: #e53935;
    }

    .nav-right {
        display: flex;
        align-items: center;
    }

    .nav-right a:hover {
        text-decoration: underline;
    }
</style>

<div class="nav-bar">
    <div class="nav-left">
        <a href="index2.jsp" class="home">Home</a>
    </div>
    <div class="nav-right">
        <a href="login.jsp">로그인</a>
        <a href="member2.jsp">회원가입</a>
        <a href="todolist_s1.jsp">스타벅스소개</a>
        <a href="todolist_s2.jsp">스타벅스커피</a>
        <a href="todolist_s3.jsp">조선대학교</a>
    </div>
</div>
