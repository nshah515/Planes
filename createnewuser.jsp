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
	String newname= request.getParameter("uname");
	String pword= request.getParameter("pword");
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	int val =Integer.parseInt(request.getParameter("type"));
	
	if(lname == null || fname == null){
		response.sendRedirect("createerror.jsp");
	}
	if (pword.length()==0||newname.length()==0)
	{
		response.sendRedirect("createerror.jsp");
	}
	
	else 
	{

	try {

		//Get the database connection
	//	ApplicationDB db = new ApplicationDB();	
	//	Connection con = db.getConnection();
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://cs336db.cknzmwuqa0f9.us-east-2.rds.amazonaws.com:3306/FlightReservation","cs336","Asadasad1!");
		
		//Create a SQL statement
		Statement stmt = con.createStatement();
		
		//Populate SQL statement with an actual query. It returns a single number. The number of beers in the DB.
		String str = "SELECT COUNT(username) as cnt FROM users where username='"+newname+"'";

		//Run the query against the DB
		ResultSet result = stmt.executeQuery(str);
		boolean userexists=false;
		//Start parsing out the result of the query. Don't forget this statement. It opens up the result set.
		while(result.next())
		{
			if (result.getInt("cnt")==1)
			{
				userexists=true;
				response.sendRedirect("createerror.jsp");
				break;
			}
		}
		
		if(!userexists)
		{
		String insert = "INSERT INTO users(username, password, first_name, last_name, type)"
				+ "VALUES (?, ?, ?, ?, ?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps = con.prepareStatement(insert);
		ps.setString(1, newname);
		ps.setString(2, pword);
		ps.setString(3, fname);
		ps.setString(4, lname);
		ps.setInt(5, val);
		ps.executeUpdate();
		response.sendRedirect("createsuccess.jsp");
		}

	}
		 catch (Exception ex) {
		out.print(ex);
		out.print("insert failed");
	}
	}
%>
</body>
</html>