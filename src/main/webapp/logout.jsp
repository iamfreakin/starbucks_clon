<%@ page contentType="text/html; charset=UTF-8" %>
<%
    session.invalidate();  // 모든 세션 제거
    response.sendRedirect("login.jsp");
%>