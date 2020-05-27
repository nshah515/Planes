<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> <html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
<%
	String logname= request.getParameter("luname");
	session.setAttribute("sessname",logname); 
	String pword= request.getParameter("lpword");
	session.setAttribute("password", pword);
	if (pword.length()==0||logname.length()==0)
	{
		response.sendRedirect("loginerror.jsp");
	}
	
	else 
	{

	try {

		//Get the database connection
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://cs336db.cknzmwuqa0f9.us-east-2.rds.amazonaws.com:3306/FlightReservation","cs336","Asadasad1!");
		

		//Creat"WebContent/loginnewuser.jsp"e a SQL statement
		Statement stmt = con.createStatement();
		
		String newname = request.getParameter("uname");
		String type = request.getParameter("type");
		
		//Populate SQL statement with an actual query. It returns a single number. The number of beers in the DB.
		//String str = "SELECT COUNT(username) as cnt FROM users where username='"+newname+"'";
		String str = "SELECT COUNT(*) as cnt FROM users WHERE username='"+logname+"' AND password='"+pword+"' AND type='"+type+"'";
		System.out.println(str);
		//Run the query against the DB
		ResultSet result = stmt.executeQuery(str);
		boolean userexists=false;
		//Start parsing out the result of the query. Don't forget this statement. It opens up the result set.
		while(result.next()){
			if (result.getInt("cnt")==1){
				userexists=true;
				if(type.equals("Customer")){
					response.sendRedirect("home.jsp");
				}else if(type.equals("Customer representative")){
					response.sendRedirect("customerrep.jsp");
				}else{
					response.sendRedirect("admin_home.jsp");
				}
			}
		}
		
		if(!userexists){
		
			response.sendRedirect("loginerror.jsp");
		}

	}
	catch (Exception ex) {
		out.print(ex);
		out.print("insert failed");
	}
}
%>
<a href="createcancel.jsp">Check Output Page Here </a>
<a href="cancelReservation.jsp">Check Output Page Here </a>
<a href="viewupcoming.jsp">Check Output Page Here </a>
<a href="createReservation.jsp">Check Output Page Here </a>

<a href="searchForFlight.jsp">Check Output Page Here </a>
</body>
</html>