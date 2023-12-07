<?php
session_start();
include "db_conn.php";
if (isset($_SESSION['user_id']) && isset($_SESSION['user_email'])) {
?>

    <!DOCTYPE html>
    <html>

    <head>
        <link rel="stylesheet" type="text/css" href="styles/style_profiel.css">
    </head>

    <body>

        <?php
        $toonInfo = false;

        if (isset($_GET['toonInfo']) && $_GET['toonInfo'] == 'true') {
            $toonInfo = true;
        }

        $toonVoertuien = false;

        if (isset($_GET['toonVoertuien']) && $_GET['toonVoertuien'] == 'true') {
            $toonVoertuien = true;
        }

        $toonInventory = false;

        if (isset($_GET['toonInventory']) && $_GET['toonInventory'] == 'true') {
            $toonInventory = true;
        }

        if (isset($_GET['identifier'])) {
            $identifier = $_GET['identifier'];
        }

        try {
            $stmt = $conn->prepare("SELECT * FROM users WHERE identifier = :identifier");
            $stmt->bindParam(':identifier', $identifier);
            $stmt->execute();
            $vehicle = $conn->query("SELECT * FROM `owned_vehicles` WHERE owner='$identifier'");

            $result = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($result) {
                $voornaam = $result['firstname'];
                $achternaam = $result['lastname'];
                $phone_number = $result['phone_number'];
                $birth = $result['dateofbirth'];
                $sex = $result['sex'];
                $jsonmoney2 = $result['accounts'];
                $moneyjson2 = json_decode($jsonmoney2);
                $inventory = $result['inventory'];
                $inventory2 = json_decode($inventory);

                if ($result['sex'] == "m") {
                    $sex = "Man";
                } else {
                    $sex = "Vrouw";
                }
            } else {
                echo 'Gebruiker niet gevonden, probeer het opnieuw!';
            }
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
        ?>


        <nav class="navbar">
            <div class="navbar-logo">
                <img src="img/dulcyrp.png?1234324" alt="DulcyRP">
            </div>
            <div>
                <h1 class="name"><?php echo $_SESSION['user_full_name']; ?></h1>
            </div>
            <div class="navbar-links">
                <a href="index.php" class="navbar-link">Startpagina</a>
                <a href="profiel.php?toonInfo=false" class="navbar-link">Profiel</a>
            </div>
            <a href="logout.php" class="navbar-link2">Uitloggen</a>
        </nav>

        <div class="profile-container">
            <div class="profile-icon">
                <img src="img/unknown.png" alt="Profiel">
            </div>
            <div class="profile-details">
                <h4>
                    <span><?php echo $voornaam . ' ' . $achternaam; ?></span>
                    <p>Identifier: <?php echo $identifier; ?></p>
                </h4>
            </div>
        </div>
        <div class="center">
            <a href="profiel.php?identifier=<?= $identifier ?>&toonInfo=true" class="purple-button">Info</a>
            <a href="profiel.php?identifier=<?= $identifier ?>&toonVoertuien=true" class="purple-button">Voertuigen</a>
            <a href="profiel.php?identifier=<?= $identifier ?>&toonInventory=true" class="purple-button">Inventory</a>
        </div>
        <?php if ($toonInfo) : ?>
            <div class="row">
                <div class="card">
                    <div class="card-text">
                        Contant: €<?= $moneyjson2->{'money'} ?>
                    </div>
                </div>
                <div class="card">
                    <div class="card-text">
                        Bank: €<?= $moneyjson2->{'bank'} ?>
                    </div>
                </div>
                <div class="card">
                    <div class="card-text">
                        Zwart: €<?= $moneyjson2->{'black_money'} ?>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="card">
                    <div class="card-text">
                        Telefoonnummer: <?= $phone_number ?>
                    </div>
                </div>
                <div class="card">
                    <div class="card-text">
                        Geboortedatum: <?= $birth ?>
                    </div>
                </div>
                <div class="card">
                    <div class="card-text">
                        Geslacht: <?= $sex ?>
                    </div>
                </div>
            </div>
        <?php endif; ?>

        <?php if ($toonVoertuien) : ?>
            <div class="row">
                <?php
                if ($vehicle->rowCount() > 1) {
                    while ($rowveh = $vehicle->fetch()) {
                ?>
                        <div class="card">
                            <div class="card-text">
                                Kenteken: <?= $rowveh['plate'] ?>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
        <?php endif; ?>

        <?php if ($toonInventory) : ?>
            <div class="row">
                <?php
                if (is_array($inventory2) && count($inventory2) > 0) {
                    foreach ($inventory2 as $rowinv) {
                ?>
                        <div class="card">
                            <div class="card-text">
                                <?= $rowinv->count ?>x <?= $rowinv->name ?>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
        <?php endif; ?>

    </body>

    </html>


<?php
} else {
    header("Location: login.php");
}
?>