<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "poogleFormsExpt.form.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<form method="post" action="mailto:raizen@mail.utexas.edu?subject=Vocabulary Quiz 1" enctype="text/plain">
	<%! 
		/* MultipleChoiceTypeQuestion ques = new MultipleChoiceTypeQuestion("How do you laugh?", new String[] {"haha", "hehe"}, 15478);  */
		
	%> 
	
	<%
		MultipleChoiceTypeQuestion ques = (MultipleChoiceTypeQuestion)request.getAttribute("currQuestion");
		String[] options = ques.getOptions();
	%>
	<p> Question: <%= ques.getPrompt()%></p>
	<p>Options:</p>
	<%for(int i=0;i<options.length;i++){ %>
		<input type="radio" name= <%=ques.getPrompt()%> value=<%=options[i]%> ><%= i+1 + ": " + options[i] %><BR>
		<%-- <%= i+1 + ": " + options[i] %> --%>
	<%} %>
	<input type="submit">
	</form>
