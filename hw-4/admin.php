<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php include('index.php')?>
    <?php
        $sql = "SELECT * FROM filmovi";
        $movies = $database->query($sql); 
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
                <a class="nav-link" href="admin.php">Admin</a>
                <a class="nav-link" href="dodaj_film.php">Dodaj Film </a>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <a class="nav-link" href="index.php?logout=1"><?php echo $_SESSION['username']?> - Odjavi se</a>
            </form>
        </div>
    </nav>

    <div class="container">
        <table class="my-3 table table-responsive">
            <th>Poster</th>
            <th>Naslov</th>
            <th>Opis</th>
            <th>Zanrovi</th>
            <th>Scenarista</th>
            <th>Reziser</th>
            <th>Glumci</th>
            <th>Godina izdanja</th>
            <th>trajanje</th>
            <th>Akcije</th>

            <?php while($movie = $movies->fetch_assoc()):?>
            <tr>
            <td>
                <?php echo '<img class = "w-100" src="data:image/jpeg;base64,'.base64_encode( $movie['poster'] ).'"/>';?>
            </td>
            <td>
                <h3><?php echo $movie['naslov'];?></h3>
            </td>

            <td>
                <p><?php echo $movie['opis'];?></p>
            </td>
            <td>
                <p><?php echo $movie['zanrovi'];?></p>
            </td>
            <td>
                <p><?php echo $movie['scenarista'];?></p>
            </td>
            <td>
                <p><?php echo $movie['reziser'];?></p>
            </td>
            <td>
                <p><?php echo $movie['glumci'];?></p>
            </td>
            <td>
                <p><?php echo $movie['godina_izdanja'];?></p>
            </td>
            <td>
                <p><?php echo $movie['trajanje'];?></p>
            </td>
            <td>
                <a class="btn btn-primary my-3" href="izmeni_film.php?id=<?php echo $movie['id'];?>">Izmeni film</a>
                <form action="index.php" method = "post">
                    <button type = "submit" class="btn btn-primary my-3">Obrisi film</button>
                    <input type = "hidden" name = "movieDelete">
                    <input type = "hidden" name = "id" value = "<?php echo $movie['id']?>">
                </form>
            </td>
            <?php endwhile;?>
            </tr>
        </table>

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