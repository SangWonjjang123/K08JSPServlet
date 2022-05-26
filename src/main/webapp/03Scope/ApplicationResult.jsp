<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application영역</title>
</head>
<body>
	<h2>application 영역의 속성 읽기</h2>
	<%
	Map<String, Person> maps = (Map<String, Person>) application.getAttribute("maps");
	/* 
	Map 컬렉션은 key 를 통해 value 를 저장하므로 반복전에 key 를 먼저 얻어와야 한다
	keySet()을통해 얻어온 key 의 목록을 통해 반복하고, get() 을통해 value 를 출력한다
	*/
	Set<String> keys = maps.keySet();
	for (String key : keys) {
		Person person = maps.get(key);
		out.print(String.format("이름 : %s,나이 :%d<br/>  ", person.getName(), person.getAge()));
	}
	%>

</body>
</html>