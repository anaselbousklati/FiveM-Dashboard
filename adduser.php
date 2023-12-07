<?php
session_start();
include "db_conn.php";

$notification = ''; // Initialize the notification variable

if (isset($_SESSION['user_id']) && isset($_SESSION['user_email'])) {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $name = $_POST["name"];
        $email = $_POST["email"];
        $password = $_POST["password"];

        $hashed_password = password_hash($password, PASSWORD_BCRYPT);

        try {
            // Create a prepared statement to insert the user data into the database
            $stmt = $conn->prepare("INSERT INTO webusers (full_name, email, password) VALUES (:name, :email, :password)");
            $stmt->bindParam(':name', $name);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':password', $hashed_password);

            if ($stmt->execute()) {
                $notification = '<div class="alert alert-success">
                    <h4 class="alert-heading">Goed gedaan!</h4>
                    <hr>
                    <p>' . $name . ' is succesvol toegevoegd.</p>
                </div>';
            } else {
                $error_message = implode(', ', $stmt->errorInfo());
                $notification = '<div class="alert alert-danger">
                    <h4 class="alert-heading">Error</h4>
                    <p>Error toevoegen account: ' . $error_message . '</p>
                </div>';
            }
        } catch (PDOException $e) {
            $error_message = $e->getMessage();
            $notification = '<div class="alert alert-danger">
                <h4 class="alert-heading">Error</h4>
                <p>Error: ' . $error_message . '</p>
            </div>';
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style_adduser.css">
    <title>Add User</title>
</head>

<body>
    <nav class="navbar">
        <div class="navbar-logo">
            <img src="img/dulcyrp.png?1234324" alt="DulcyRP">
        </div>
        <div>
            <h1 class="name"><?= $_SESSION['user_full_name'] ?></h1>
        </div>
        <div class="navbar-links">
            <a href="index.php" class="navbar-link">Startpagina</a>
            <a href="profiel.php?toonInfo=false" class="navbar-link">Profiel</a>
        </div>
        <a href="logout.php" class="navbar-link2">Uitloggen</a>
    </nav>
    <div class="form">
    <?php echo $notification; ?>
    <div class="container">
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
            <div class="form-group">
                <label for="name" class="form-label">Naam:</label>
                <input type="text" name="name" id="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email" class="form-label">Email:</label>
                <input type="email" name="email" id="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password" class="form-label">Wachtwoord:</label>
                <input type="password" name="password" id="password" class="form-control" required>
            </div>
            <button type="submit" class="submit-button">Aanmaken</button>
        </form>
    </div>
    </div>
</body>

</html>