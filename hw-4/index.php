<?php 
    $database = new mysqli('localhost','root','','filmovipregled');
    session_start();
    if(isset($_GET['logout'])){
        session_destroy();
        header('location: index.php');
    }
    if(isset($_SESSION['username'])){
        $username = $_SESSION['username'];
        $get_user = "SELECT * FROM korisnici where korisnicko_ime = '$username' or email = '$username'";
        $res = $database->query($get_user);
        if(mysqli_num_rows($res) > 0){
            $user = $res->fetch_assoc();
            $uid = $user['id'];
            $_SESSION['uloga'] = $user['uloga'];
            if($user['uloga'] == 'korisnik' && !isset($_SESSION['validated'])){
                header('location: pocetna.php');
                $_SESSION['validated'] = true;
            }
            if($user['uloga'] == 'admin' && !isset($_SESSION['validated'])){
                header('location: admin.php');
                $_SESSION['validated'] = true;

            }
        }
    }
    else{
        header('location: login.php');
    }

    if(isset($_POST['login'])){
        $uname = $_POST['user_data'];
        $password = md5($_POST['password']);
        var_dump($_POST,$uname,$password);

        $sql = "SELECT * FROM korisnici WHERE (korisnicko_ime = '$uname' OR email = '$uname') AND lozinka = '$password'";
        if(mysqli_num_rows($database->query($sql))>0){
            $_SESSION['username'] = $uname;
            header('location:pocetna.php');
        }
        else{
            echo 'Greska ' .$database->error;
        }
    }

    if(isset($_POST['register'])){
        $fname = $_POST['first_name'];
        $lname = $_POST['last_name'];
        $uname = $_POST['username'];
        $email = $_POST['email'];
        $password = md5($_POST['password']);
        var_dump($_POST);
        $sql = "INSERT INTO 
        korisnici(ime,prezime,email,korisnicko_ime,lozinka)
        VALUES ('$fname','$lname','$email','$uname','$password')";
        if($database->query($sql) === TRUE){
            $_SESSION['username'] = $uname;
            header('location: pocetna.php');
        }
        else{
            echo 'Greska ' . $database->error;
        }
    }

    if(isset($_POST['upload'])){
        $title = $_POST['naslov'];
        $description = $_POST['opis'];
        $genres = $_POST['zanr'];
        $sw = $_POST['scenarista'];
        $dir = $_POST['reziser'];
        $ph = $_POST['producentska_kuca'];
        $actors = $_POST['glumci'];
        $duration = $_POST['trajanje'];
        $release = $_POST['godina_izdanja'];
        $poster = addslashes(file_get_contents($_FILES['poster']['tmp_name']));

        $sql = "INSERT INTO filmovi(naslov,opis,zanrovi,scenarista,reziser,producentska_kuca,glumci,godina_izdanja,poster,trajanje)
                VALUES('$title','$description','$genres','$sw','$dir','$ph','$actors',$release,'$poster',$duration)
                ";
        if($r = $database->query($sql) === TRUE){
            header('location: admin.php');
        }
        else{
            echo 'Greska ' .$database->error;
        }
    }
    if(isset($_POST['movieEdit'])){
        $id = $_POST['id'];
        $title = $_POST['naslov'];
        $description = $_POST['opis'];
        $genres = $_POST['zanr'];
        $sw = $_POST['scenarista'];
        $dir = $_POST['reziser'];
        $ph = $_POST['producentska_kuca'];
        $actors = $_POST['glumci'];
        $duration = $_POST['trajanje'];
        $release = $_POST['godina_izdanja'];
        $sql = "UPDATE filmovi
                    SET naslov = '$title',
                    opis = '$description',
                    zanrovi = '$genres',
                    scenarista = '$sw',
                    reziser = '$dir',
                    producentska_kuca = '$ph',
                    glumci = '$actors',
                    godina_izdanja = $release,
                    trajanje = $duration
                WHERE id = $id;
                ";
        if($r = $database->query($sql) === TRUE){
            header('location: admin.php');
        }
        else{
            echo 'Greska ' .$database->error;
        }

    }
    if(isset($_POST["movieDelete"])){
        $id = $_POST['id'];
        $sql = "DELETE FROM filmovi WHERE id = $id";
        if($r = $database->query($sql) === TRUE){
            header('location: admin.php');
        }
        else{
            echo 'Greska ' .$database->error;
        }
    }
    if(isset($_POST['rate'])){
        $mid = $_POST['mid'];
        $uid = $_POST['uid'];
        $rate = $_POST['ocena'];
        $comment = $_POST['komentar'];
        $sql = "INSERT INTO ocene(film_id,korisnik_id,ocena,komentar) VALUES($mid,$uid,$rate,'$comment')";
        if($database->query($sql) === TRUE){
            header('location: detalji_filma.php?id='.$mid);
        }
        else{
            echo 'Greska ' .$database->error;
        }
    }
    if(isset($_POST['rateEdit'])){
        $mid = $_POST['mid'];
        $uid = $_POST['uid'];
        $rate = $_POST['ocena'];
        $comment = $_POST['komentar'];
        $sql = "UPDATE ocene 
        SET ocena = $rate,
            komentar = '$comment'
            WHERE film_id = $mid AND korisnik_id = $uid
            ";
        if($database->query($sql) === TRUE){
            header('location: detalji_filma.php?id='.$mid);
        }
        else{
            echo 'Greska ' .$database->error;
        }
    }

?>