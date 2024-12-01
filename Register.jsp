<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="style1.css">

</head>
<body>

<div class="container">
<h1>Register</h1>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <!-- Include Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        /* Wrapper for the input fields */
        .input-container {
            position: relative;
            margin-bottom: 15px;
        }

        /* Style for icons positioned on the right */
        .input-container i {
            position: absolute;
            right: 10px;      /* Position icon 10px from the right */
            top: 50%;         /* Position vertically in the middle */
            transform: translateY(-50%);  /* Adjust for perfect vertical centering */
            color: #888;      /* Icon color */
            font-size: 16px;  /* Adjust icon size */
        }

        /* Style for input fields */
        .input-container input {
            padding-right: 35px; /* Space for the icon (adjust if needed) */
            width: 100%;         /* Ensure inputs fill available space */
            padding: 10px;       /* Adjust input padding */
            font-size: 14px;     /* Adjust text size */
            box-sizing: border-box; /* Include padding in width calculation */
            border: 1px solid #ccc; /* Add border to input fields */
            border-radius: 4px;  /* Round corners */
        }

        /* Button style */
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 4px; /* Rounded corners for button */
        }

        /* Button hover effect */
        button:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>

<form action="RegisterServlet" method="post">
    <!-- Username Input -->
    <div class="input-container">
        <label for="username" style="display:none;">Username:</label>
        <input type="text" id="username" name="username" placeholder="Username" required>
        <i class="fas fa-user"></i> <!-- Icon for username -->
    </div>

    <!-- Email Input -->
    <div class="input-container">
        <label for="email" style="display:none;">Email:</label>
        <input type="email" id="email" name="email" placeholder="Email" required>
        <i class="fas fa-envelope"></i> <!-- Icon for email -->
    </div>

    <!-- Password Input -->
    <div class="input-container">
        <label for="password" style="display:none;">Password:</label>
        <input type="password" id="password" name="password" placeholder="Password" required>
        <i class="fas fa-lock"></i> <!-- Icon for password -->
    </div>

    <!-- Submit Button -->
    <button type="submit">Register</button>
</form>

</body>
</html>

<p><a href="index.html">Back to Home</a><p>






</div>

</body>
</html>