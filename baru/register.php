<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register Akun -  Perpustakaan Sistem Informasi</title>

    <!-- Custom fonts for this template-->
    <link href="User/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"><img src="gedungbaru.jpg" height="650" width="500"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Buat Akun</h1>
                            </div>
                            <form class="user" action="simpan-register.php" method="POST">
                                <div class="form-group row" >
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" name = "depan" class="form-control form-control-user" id="namadepan" autocomplete="off"
                                            placeholder="Nama Depan">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" name = "belakang" class="form-control form-control-user" id="namabelakang" autocomplete="off"
                                            placeholder="Nama Belakang">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="number" size = "20" min="0" name = "idlogin" class="form-control form-control-user" id="nipdanim" autocomplete="off"
                                        placeholder="NIP / NIM Anda">
                                </div>
                                <div class="form-group">
                                    <input type="email" name = "email" class="form-control form-control-user" id="email" autocomplete="off"
                                        placeholder="E-mail Anda">
                                </div>
                                <div class="form-group">
                                    
                                    <input type="password" name = "password" class="form-control form-control-user"
                                        id="password" placeholder="Masukkan Password">
                                    
                                </div>
                                <table>
                                    <tr>
                                    <td>
                                <div class="col-sm-6">
                                    
                                    <select name="role" hidden selected="user">
                                        <option value="user">User</option>
                                        <option value="staff">Staff</option>
                                        <option value="admin">Admin</option>
                                    </select>
                                    </td>
                                    <td>
                                    <label for="gender">Jenis Kelamin :</label>
                                    <select class="form-select" name="gender"aria-label="Default select example">
                                        <option value="Laki-laki">Laki-Laki</option>
                                        <option value="Perempuan">Perempuan</option>
                                        </select>
                                    </td>
                                    </tr>
                                </div>
                                </table>
                                &ensp;
                                &ensp;
                                <button class="btn btn-primary btn-user btn-block" name="tambah" value ="tambah">Buat Akun</button>
                                <hr>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="index.php"><strong>Kembali Halaman Login</strong></a>
                            </div>
                            <div class="text-center">
                                <a></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>