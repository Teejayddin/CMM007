
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cooking_Recipe</title>
    <link rel="stylesheet" href="./login.css">
</head>
<body>
    <div class="navbar">
        <a href="./index.html" class="logo">Cooking Recipe</a>
        <ul class="nav-links">
            <li><a href="./register.php" class="btn">Register</a></li> 
   
        </ul>
    </div>
    <div class="card">
        <h2>Login</h2>
        <form action="server-side/login_process.php" method="post">
    <label for="username">Username:</label>
    <input type="text" name="username" required><br>
    <label for="password">Password:</label>
    <input type="password" name="password" required><br>
    <button type="submit">Login</button>
</form>
        <div class="register-container">
            <p>You dont have an account</p>
            <a href="./register.php">Register here</a>
        </div>

    </div>
    <div class="footer">
        <p>&copy; 2024 Cooking Recipe. All rights reserved.</p>
    </div>
</body>
</html>