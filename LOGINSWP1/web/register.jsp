<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="icon" type="image/x-icon" href="pic/logo.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://wallpapercave.com/wp/wp5625962.jpg');
            background-size: cover;
            background-position: center center;
            background-color: #f0f0f0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            max-width: 500px;
            width: 100%;
        }
        .card {
            border: none;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.35);
        }
        .form-outline {
            position: relative;
            margin-bottom: 1.5rem;
        }
        .form-outline input {
            border: none;
            border-bottom: 1px solid #ced4da;
            border-radius: 0;
            outline: none;
            background-color: transparent;
            padding: 0.75rem 0;
            font-size: 1rem;
            color: #495057;
            width: 100%;
        }
        .form-outline label {
            position: absolute;
            top: 0.5rem;
            left: 0;
            color: #6c757d;
            font-size: 0.9rem;
            pointer-events: none;
            transition: all 0.2s;
        }
        .form-outline input:focus ~ label, .form-outline input:valid ~ label {
            top: -0.5rem;
            font-size: 0.75rem;
            color: #4285f4;
        }
        .btn-custom {
            background-color: #28a745;
            border-color: #28a745;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body p-5">
                    <h2 class="text-center mb-4">Register</h2>
                    <form action="register" method="post" onsubmit="return validateForm()">
                        <div id="errorMessage" class="text-danger mb-3">${msg}</div>

                        <div class="form-outline mb-4">
                            <input type="email" name="email" id="inputEmail" class="form-control" required>
                            <label for="inputEmail" class="form-label">Email *</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" name="password" id="inputPassword" class="form-control" required>
                            <label for="inputPassword" class="form-label">Password *</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" name="repassword" id="inputRePassword" class="form-control" required>
                            <label for="inputRePassword" class="form-label">Repeat Password *</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="text" name="fullName" id="inputFullName" class="form-control" required>
                            <label for="inputFullName" class="form-label">Your Name *</label>
                        </div>

                        <div class="form-check mb-4">
                            <input class="form-check-input" type="radio" name="gender" id="male" value="1" checked>
                            <label class="form-check-label" for="male">Male</label>
                        </div>
                        <div class="form-check mb-4">
                            <input class="form-check-input" type="radio" name="gender" id="female" value="0">
                            <label class="form-check-label" for="female">Female</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="text" name="phonenumber" id="inputPhoneNumber" class="form-control">
                            <label for="inputPhoneNumber" class="form-label">Phone Number</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="text" name="address" id="inputAddress" class="form-control">
                            <label for="inputAddress" class="form-label">Address</label>
                        </div>

                        <button type="submit" class="btn btn-lg btn-custom btn-block">Register</button>
                    </form>
                    <p class="text-center mt-3 mb-0">Have an account? <a href="login">Login here</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
