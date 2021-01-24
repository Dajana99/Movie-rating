<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php include('index.php')?>
    <?php
    if($_SESSION['uloga'] != 'admin'){
            header('location: pocetna.php');
        }
    ?>
    <?php
        $id = $_GET['id'];
        $sql = "SELECT * FROM filmovi WHERE id = $id";
        $movie = $database->query($sql); 
        $movie = $movie->fetch_assoc();
    ?>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">FilmoviPregled</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="pocetna.php">Pocetna</a>
                </li>
                <?php if($_SESSION['uloga'] == 'admin'):?>
                <a class="nav-link" href="admin.php">Admin</a>
                <a class="nav-link" href="dodaj_film.php">Dodaj Film </a>
                <?php endif?>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <a class="nav-link" href="index.php?logout=1"><?php echo $_SESSION['username']?> - Odjavi se</a>
            </form>
        </div>
    </nav>

    <div class="container">
        <form class="mt-3" action="index.php" method="POST">
            <div class="form-group">
                <label>Naslov filma</label>
                <input name="naslov" type="text" class="form-control" value="<?php echo $movie['naslov']?>">
            </div>
            <div class="form-group">
                <label>Opis</label>
                <textarea class="form-control" name="opis" id="" cols="30"
                    rows="10"><?php echo $movie['opis']?></textarea>
            </div>
            <div class="form-group">
                <label>Zanr / zanrovi (zanrove odvojiti sa <strong>,</strong> )</label>
                <input type="text" name="zanr" class="form-control" value="<?php echo $movie['zanrovi']?>">
            </div>
            <div class="form-group">
                <label>Scenarista</label>
                <input name="scenarista" type="text" class="form-control" value="<?php echo $movie['scenarista']?>">
            </div>
            <div class="form-group">
                <label>Reziser</label>
                <input name="reziser" type="text" class="form-control" value="<?php echo $movie['reziser']?>">
            </div>
            <div class="form-group">
                <label>Producentska Kuca</label>
                <input name="producentska_kuca" type="text" class="form-control"
                    value="<?php echo $movie['producentska_kuca']?>">
            </div>
            <div class="form-group">
                <label>Lista glumaca (glumce odvojiti sa <strong>,</strong> )</label>
                <input name="glumci" type="text" class="form-control" value="<?php echo $movie['glumci']?>">
            </div>
            <div class="form-group">
                <label>Godina izdanja</label>
                <input type="number" name="godina_izdanja" class="form-control"
                    value="<?php echo $movie['godina_izdanja']?>">
            </div>
            <div class="form-group">
                <label>Trajanje</label>
                <input type="number" name="trajanje" class="form-control" value="<?php echo $movie['trajanje']?>">
            </div>
            <input type="hidden" name='movieEdit' value="1">
            <input type="hidden" name="id" value="<?php echo $id;?>">
            <button type="submit" class="btn btn-primary">Izmeni</button>
        </form>

    </div>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>
</body>

</html>