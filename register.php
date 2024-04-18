
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cooking_Recipe</title>
    <link rel="stylesheet" href="./register.css">
</head>
<body>
    <div class="navbar">
        <a href="./index.html" class="logo">Cooking Recipe</a>
        <ul class="nav-links">
            <li><a href="./login.php" class="btn">Login</a></li> 
        </ul>
    </div>
    <div class="card">
        <h2>Register</h2>
        <form action="server-side/register_process.php" method="post"> <!-- Update action attribute -->
    <label for="username">Username:</label>
    <input type="text" name="username" required><br>
    <label for="password">Password:</label>
    <input type="password" name="password" required><br>
    <button type="submit">Register</button>
</form>
        <div class="register-container">
            <p>You have an account already</p>
            <a href="./login.php">Login</a>
        </div>
        <div class="respondContainer">
            <p class="error"></p>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Cooking Recipe. All rights reserved.</p>
    </div>
</body>
</html>