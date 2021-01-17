<?php 
    $database = new mysqli('localhost','root','','filmovipregled');
    session_start();
    if(isset($_POST['login'])){

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
        VALUES ('$fname','$lname','$uname','$email','$password')";
        if($database->query($sql) === TRUE){
            $_SESSION['username'] = $uname;
            header('location: pocetna.php');
        }
        else{
            echo 'Greska ' . $database->error;
        }

    }
?>