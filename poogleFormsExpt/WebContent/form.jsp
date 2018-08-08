<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = 'java.util.*' %>
<%@ page import = "poogleFormsExpt.form.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Question q1 = new MultipleChoiceTypeQuestion("How do you laugh?", new String[] {"haha", "hehe"}, 15478);
		Question q2 = new MultipleChoiceTypeQuestion("How do you cry?", new String[] {"uuuein uuein", "oooueein ooouein"}, 15479);
		ArrayList<Question> qs = new ArrayList<Question>();
		qs.add(q1);
		qs.add(q2);
		Form f = new Form("form how do",qs,(long)78784);
	%>
	
	<h1><%=f.getFormName() %></h1>
	<h2>Answer:</h2>
	<% for(int i = 0;i<qs.size();i++){ 
		request.setAttribute("currQuestion", qs.get(i));
	%>
	
	<jsp:include page="MCQHandler.jsp"/>
	<%} %>

</body>
</html>