<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body>


<button id="button1">Click me!</button>

<div>
	<p class="greeting-id">The ID is </p>
	<p class="greeting-content">The content is </p>
</div>

<textarea id="txtarea" rows="10" cols="20"></textarea>

<p id="p1">This is a sample text...</p>

<script>
$(document).ready(function(){
   	
	$("#button1").click(function(){
   		
   		$.ajax({
   	        url: "greeting"
   	    }).then(function(data) {
   	       $('.greeting-id').append(data.id);
   	       $('.greeting-content').append(data.content);
   	    });
   		
   		$.get('http://localhost:8080/rest/greeting', 'name=jorge', function(data,status){
   			$("#txtarea").append("\nData: " + data.id + "\nContent: " + data.content + "\nStatus: " + status);	
   		});
   		
   		$.getJSON("http://localhost:8080/rest/greeting", 'name=Didier', function(result){
   		    $.each(result, function(i, field){
   		      $("#p1").append(" " + i + " > " + field);
   		    });
    	});   		
   		
   	});
	
});
</script>

</body>
</html>