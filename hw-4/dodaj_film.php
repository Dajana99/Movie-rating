<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php include('index.php');?>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">FilmoviPregled</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="">Pocetna <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <div class="container">
        <form action="index.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label>Naslov filma</label>
                <input name="naslov" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Opis</label>
                <textarea class="form-control" name="opis" id="" cols="30" rows="10"></textarea>
            </div>
            <div class="form-group">
                <label>Zanr / zanrovi (zanrove odvojiti sa <strong>,</strong> )</label>
                <input type="text" name="zanr" class="form-control">
            </div>
            <div class="form-group">
                <label>Scenarista</label>
                <input name="scenarista" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Reziser</label>
                <input name="reziser" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Producentska Kuca</label>
                <input name="producentska_kuca" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Lista glumaca (glumce odvojiti sa <strong>,</strong> )</label>
                <input name="glumci" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Godina izdanja</label>
                <input type="number" name = "godina_izdanja" class="form-control">
            </div>
            <div class="custom-file">
                <input type="file" class="custom-file-input" name = "poster">
                <label class="custom-file-label">Odaberite fajl</label>
            </div>
            <div class="form-group">
                <label>Trajanje</label>
                <input type="number" name = "trajanje" class="form-control">
            </div>
            <input type = "hidden" name = 'upload' value = "1">
            <button type="submit" class="btn btn-primary">Otpremi</button>
        </form>
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