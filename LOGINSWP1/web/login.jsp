<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/x-icon" href="pic/logo.png">
    <title>Login</title>

    <style>
        /* Định dạng nền */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .login-section {
            background-image: url('https://wallpapercave.com/wp/wp5625962.jpg');
            background-size: cover;
            background-position: center center;
            background-color: #f0f0f0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            max-width: 400px;
            width: 100%;
            border: none;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.35);
        }

        .card-body {
            padding: 40px;
        }

        .form-control {
            border-radius: 20px;
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
        }

        .btn-primary {
            border-radius: 20px;
            padding: 15px;
            background-color: #007bff;
            border: none;
            color: white;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .text-muted {
            color: #6c757d;
        }

        .link-info {
            color: #007bff;
            text-decoration: none;
        }

        .link-info:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<section class="login-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card " style="background: white">
                    <div class="card-body p-5 text-center">
                        <h3 class="mb-5">Sign in</h3>
                        <c:if test="${err!=null}">
                            <div class="alert alert-danger" role="alert">${err}</div>
                        </c:if>
                        <c:if test="${param.success ne null}">
                            <div class="alert alert-success" role="alert">Register successful! Login now</div>
                        </c:if>
                        <form action="login" method="post">
                            <div class="form-group">
                                <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email" required autofocus value="${email}">
                            </div>

                            <div class="form-group">
                                <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                            </div>

                            <!-- Forgot password -->
                            <p class="small mb-5 pb-lg-2"><a class="text-muted" href="forget">Forgot password?</a></p>
                            <hr class="my-4">

                            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>

                            <hr class="my-4">
                        </form>

                        <hr class="my-4">

                        <p>Don't have an account? <a href="register" class="link-info">Register here</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>
