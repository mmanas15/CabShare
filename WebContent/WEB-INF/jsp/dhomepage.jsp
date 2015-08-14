<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<html>
	<head>
		<link rel="Stylesheet" href="jquery/jquery-ui.css">
		<link rel="Stylesheet" href="css/cabshare.css">
		<script type="text/javascript" src="jquery/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="jquery/jquery-ui.js"></script>
		<script type="text/javascript">
		
		</script>
	</head>
	<body>
		<header>
			<jsp:include page="header.jsp" ></jsp:include>
		</header>
		<div>
			<form action="driverAction.htm" method="post">
				<!-- List for set position -->
				Set Position: 
				<select name="SelectedStop" id="SelectedStop" > 
					<% 
						List stops = (List) session.getAttribute("stopIDs");
					     for(int i=0; i<stops.size();i++){ 
					         Integer stop = (Integer)stops.get(i); 
					     %> 
					<option value="<%=stop%>"><%=stop%></option> 
					<%}%> 
				</select> 
				<input type="submit" name="set" value="SET"/>
			</form>
		</div>
		
		
		<footer>
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
	</body>
</html>