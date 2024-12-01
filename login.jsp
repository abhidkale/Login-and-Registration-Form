<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style1.css">

</head>
<body>

<div class="container">
<h1>Login</h1>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <!-- Include Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        .input-container {
            position: relative;
            margin-bottom: 15px;
        }
        .input-container i {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #888;
        }
        .input-container input {
            padding-right: 30px; /* Space for the icon */
            width: 100%;
            padding: 8px;
            font-size: 14px;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<form action="LoginServlet" method="post">
    <div class="input-container">
        <label for="username" style="display:none;">Username:</label>
        <input type="text" id="username" name="username" placeholder="Username" required>
        <i class="fas fa-user"></i>
    </div>
    
    <div class="input-container">
        <label for="password" style="display:none;">Password:</label>
        <input type="password" id="password" name="password" placeholder="Password" required>
        <i class="fas fa-lock"></i>
    </div>
    
    <button type="submit">Login</button>
</form>

</body>
</html>

<p><a href="index.html">Back to Home</a><p>


	<%--Display error message if login falls --%>
	<% String error = request.getParameter("error"); 
	if(error != null && error.equals("1")){ %>
	<p style="color: red;">Invalid username or password. Please try again.
	<% } %>
	
	 <%-- Display error message if Register Successful --%>
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your Registration is Successful. Please Login.</p>
        <% } %>
	






</div>

</body>
</html>