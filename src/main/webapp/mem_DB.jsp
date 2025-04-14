<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*" %>

<%
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    String password_confirm = request.getParameter("password_confirm");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    boolean passwordMatch = password != null && password.equals(password_confirm);
    boolean saved = false;

    if (passwordMatch) {
        // 저장 경로: 실제 배포 경로 기준. 여기선 서버 내부 경로에 저장
        String path = application.getRealPath("/WEB-INF/member.txt");
        FileWriter fw = new FileWriter(path, true); // append 모드
        PrintWriter pw = new PrintWriter(fw);

        pw.println("아이디: " + userid + ", 비밀번호: " + password);
        pw.close();

        saved = true;
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 결과</title>
</head>
<body>
<%
    if (passwordMatch && saved) {
%>
    <h2>회원가입이 완료되었습니다!</h2>
    <p>입력된 정보가 저장되었습니다.</p>
<%
    } else {
%>
    <h2>회원가입 실패</h2>
    <p>비밀번호와 비밀번호 확인이 일치하지 않거나 저장에 실패했습니다.</p>
    <a href="member2.jsp">돌아가기</a>
<%
    }
%>
</body>
</html>
