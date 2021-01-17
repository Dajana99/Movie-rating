<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="contaniner">
        <h1 class="text-center">FilmoviPregled</h1>
        <h4 class="text-center">-Prijavite se na Vas nalog-</h4>
        <form action="index.php" method="POST" class="container">
            <div class="form-group">
                <label>Email addresa ili korisnicko ime</label>
                <input type="text" class="form-control" name="user_data">
            </div>
            <div class="form-group">
                <label >Lozinka</label>
                <input type="password" class="form-control" name="password">
            </div>
            <h6 class="text-center mb-4">Nemate nalog? Registrujte se <strong><a
                        href="registracija.php">ovde</a></strong>.</h6>
            <input type="hidden" name='login' value=1>
            <button type="submit" class="btn btn-primary w-100">Prijavi se</button>
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