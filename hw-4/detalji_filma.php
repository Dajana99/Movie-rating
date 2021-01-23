<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php include('index.php')?>
    <?php 
        $id = $_GET['id'];
        $sql = "SELECT * FROM filmovi WHERE id = $id";
        $movie = $database->query($sql)->fetch_assoc();
        $get_rate = "SELECT * FROM ocene WHERE korisnik_id = $uid";
        $r = $database -> query($get_rate);
        $get_all_reviews = "SELECT korisnici.korisnicko_ime, ocene.ocena, ocene.komentar FROM ocene INNER JOIN korisnici on ocene.korisnik_id = korisnici.id WHERE film_id = $id";
        
        $reviews = $database->query($get_all_reviews);
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
                    <a class="nav-link" href="pocetna.php">Pocetna <span class="sr-only">(current)</span></a>
                </li>
                <?php if($_SESSION['uloga'] == 'admin'):?>
                <a class="nav-link" href="admin.php">Admin</a>
                <a class="nav-link" href="dodaj_film.php">Dodaj Film </a>
                <?php endif?>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <a class="nav-link" href="index.php?logout=1"><?php echo $_SESSION['username']?> - Odjavi se</a>
            </form>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-3">
                <?php echo '<img class = "w-50 card-img-top w-100" src="data:image/jpeg;base64,'.base64_encode( $movie['poster'] ).'"/>';?>
                <div class="container text-center mt-3">
                    <h4><?php echo $movie['naslov'];?></h4>
                    <p><?php echo $movie['opis'];?></p>
                    <p><strong>Zanrovi: </strong><?php echo $movie['zanrovi'];?></p>
                    <p><strong>Glumci: </strong><?php echo $movie['glumci'];?></p>
                    <p><strong>Scenarista: </strong><?php echo $movie['scenarista'];?></p>
                    <p><strong>Reziser: </strong><?php echo $movie['reziser'];?></p>
                    <p><strong>Godina izdanja: </strong><?php echo $movie['godina_izdanja'];?></p>
                    <p><strong>Trajanje: </strong> <?php echo $movie['trajanje'];?></p>
                </div>
            </div>
            <div class="col-md-9">
                <?php while($rate = $reviews->fetch_assoc()):?>
                <div class="card">
                    <div class="card-header">
                        <span class="float-left"><?php echo $rate['korisnicko_ime'];?></span>
                        <span class="float-right"><?php echo $rate['ocena']?> / 10</span>
                    </div>
                    <div class="card-body">
                        <p class="card-text"><?php echo $rate['komentar'];?></p>
                    </div>
                </div>
                <?php endwhile?>
                <div class="section mt-5 container">
                    <?php if (mysqli_num_rows($r) == 0):?>
                    <div class="row w-100">
                        <form class="w-100" action="index.php" method="POST">
                            <div class="form-group">
                                <label>Ocena 1-10</label>
                                <input name="ocena" type="number" min=1 max=10 class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Komentar</label>
                                <textarea class="form-control" name="komentar" id="" cols="30" rows="10"></textarea>
                            </div>
                            <input type="hidden" name="rate">
                            <input type="hidden" name="mid" value="<?php echo $id?>">
                            <input type="hidden" name="uid" value="<?php echo $uid?>">

                            <button class="btn btn-danger mx-auto d-block">Oceni</button>
                        </form>
                    </div>
                    <?php else:?>
                    <?php 
                        $rating_data = "SELECT * FROM ocene where korisnik_id = $uid";
                        $res = $database->query($rating_data)->fetch_assoc();
                    ?>
                    <div class="row w-100">
                        <form class="w-100" action="index.php" method="POST">
                            <div class="form-group">
                                <label>Ocena 1-10</label>
                                <input name="ocena" type="number" min=1 max=10 class="form-control"
                                    value="<?php echo $res['ocena'];?>">
                            </div>
                            <div class="form-group">
                                <label>Komentar</label>
                                <textarea class="form-control" name="komentar" id="" cols="30"
                                    rows="10"><?php echo $res['komentar']?></textarea>
                            </div>
                            <input type="hidden" name="rateEdit">
                            <input type="hidden" name="mid" value="<?php echo $id?>">
                            <input type="hidden" name="uid" value="<?php echo $uid?>">

                            <button class="btn btn-danger mx-auto d-block">Izmeni</button>
                        </form>
                    </div>

                    <?php endif;?>
                </div>
            </div>

        </div>

    </div>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>
</body>

</html>