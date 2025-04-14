# Tomcat + Java 17 이미지 사용
FROM tomcat:9.0-jdk17

# 기본 ROOT 앱 제거 (선택)
RUN rm -rf /usr/local/tomcat/webapps/ROOT*

# WAR 파일 복사해서 ROOT.war로 등록 (루트 경로로 접근 가능)
COPY hw1.war /usr/local/tomcat/webapps/ROOT.war

# 포트 오픈 (Render가 내부적으로 포트 8080 사용)
EXPOSE 8080
