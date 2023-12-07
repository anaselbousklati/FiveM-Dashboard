<?php
session_start();

if (!isset($_SESSION['user_id']) && !isset($_SESSION['user_email'])) {
?>


    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/style_login.css">
        <link rel="shortcut icon" href="dulcyrp.png?1234324">
        <title>DulcyRP | Login</title>
    </head>

    <body>
        <div class="card">
            <img src="img/dulcyrp.png?1234324" alt="DulcyRP">
            <h1 class="card-title">LOGIN</h1>
            <?php if (isset($_GET['error'])) { ?>
                    <?= htmlspecialchars($_GET['error']) ?>
            <?php } ?>
            <form action="auth.php" method="post">
                <label for="exampleInputEmail1" class="form-label">Email</label>
                <input type="email" name="email" value="<?php if (isset($_GET['email'])) echo (htmlspecialchars($_GET['email'])) ?>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <label for="exampleInputPassword1" class="form-label">Wachtwoord</label>
                <input type="password" class="form-control" name="password" id="exampleInputPassword1">
                <button type="submit" class="btn-primary">LOGIN</button>
            </form>
        </div>
    </body>

    </html>

<?php
} else {
    header("Location: index.php");
}
?>