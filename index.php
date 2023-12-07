<?php
session_start();
include "db_conn.php";
if (isset($_SESSION['user_id']) && isset($_SESSION['user_email'])) {
?>

    <!DOCTYPE html>
    <html>

    <head>
        <link rel="stylesheet" type="text/css" href="styles/style_index.css">
    </head>

    <body>
        <?php
        try {
            $query = $conn->query("SELECT COUNT(*) as total_users FROM users");
            $query_owner_admin_count = $conn->query("SELECT COUNT(*) FROM users WHERE `group` IN ('owner', 'admin')");
            $owner_admin_count = $query_owner_admin_count->fetchColumn();

            if ($query) {
                $row = $query->fetch(PDO::FETCH_ASSOC);
                $totalUsers = $row['total_users'];
            } else {
                $totalUsers = 0;
            }

            $stmt = $conn->prepare("SELECT accounts FROM users");
            $stmt->execute();

            $totalMoney = 0;
            $totalBank = 0;
            $totalZwart = 0;

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $jsonmoney = json_decode($row['accounts'], true);
                $totalMoney += $jsonmoney['money'];
                $totalBank += $jsonmoney['bank'];
                $totalZwart += $jsonmoney['black_money'];
            }
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }

        $serverIP = "141.11.196.138";
        $serverPort = "30120";

        $apiUrl = "http://$serverIP:$serverPort/players.json";

        $playersData = file_get_contents($apiUrl);
        $players = json_decode($playersData, true);

        if ($players !== null) {
            $playerCount = count($players);
        } else {
            $playerCount = 0;
        }
        ?>

        <nav class="navbar">
            <div class="navbar-logo">
                <img src="img/dulcyrp.png?1234324" alt="DulcyRP">
            </div>
            <div>
                <h1 class="name"><?= $_SESSION['user_full_name'] ?></h1>
            </div>
            <div class="navbar-links">
                <a href="index.php" class="navbar-link">Startpagina</a>
                <a href="profiel.php?identifier=<?= $_SESSION['user_identifier']?>&toonInfo=false" class="navbar-link">Profiel</a>
            </div>
            <?php
            if ($_SESSION['user_subusers'] == 1) {
            ?>
                <a href="adduser.php" class="navbar-link2">Add user</a>
            <?php
            }
            ?>
            <a href="logout.php" class="navbar-link2">Uitloggen</a>
        </nav>

        <div class="div-class">
            <div class="card">
                <div class="card-text">
                    Aantal spelers: <?= $totalUsers ?>
                </div>
            </div>
            <div class="card">
                <div class="card-text">
                    Aantal staffleden: <?= $owner_admin_count ?>
                </div>
            </div>
            <div class="card">
                <div class="card-text">
                    Online spelers: <?= $playerCount ?>
                </div>
            </div>
        </div>

        <div class="div-class">
            <div class="card">
                <div class="card-text">
                    Alle geld: €<?= $totalMoney ?>
                </div>
            </div>
            <div class="card">
                <div class="card-text">
                    Alle bank geld: €<?= $totalBank ?>
                </div>
            </div>
            <div class="card">
                <div class="card-text">
                    Alle zwart geld: €<?= $totalZwart ?>
                </div>
            </div>
        </div>

        <div class="dark-table">
            <table>
                <thead>
                    <tr>
                        <th>Speler ID</th>
                        <th>Naam</th>
                        <th>Ping</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($players as $player) : ?>
                        <tr>
                            <td><?= $player['id']; ?></td>
                            <td><?= $player['name'] ?></td>
                            <td><?= $player['ping'] ?></td>
                        </tr>

                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>

    </body>

    </html>


<?php
} else {
    header("Location: login.php");
}
?>