<?php include "components/admin/loginFunctionality.php"; ?>

<!-- Login Form -->
<div id="login-column" class="col-md-6 rounded">
    <form id="login-form" class="form" action="admin-login.php" method="post">
        <h2 class="text-center">Login</h2>
        <hr/>
        <div class="form-group">
            <label for="username">Username:</label><br>
            <input type="text" name="username" id="username" class="form-control"
                   value=<?php echo isset($_POST['username']) ? htmlspecialchars($_POST['username'], ENT_QUOTES) : ''; ?>>
            <div class="error-messages"><?php echo $usernameErr; ?></div>
        </div>
        <div class="form-group">
            <label for="password">Password:</label><br>
            <input type="password" name="password" id="password" class="form-control"
                   value=<?php echo isset($_POST['password']) ? htmlspecialchars($_POST['password'], ENT_QUOTES) : ''; ?>>
            <div class="error-messages"><?php echo $passwordErr; ?></div>
        </div>
        <div class="row">
            <div class="col-12 text-center">
                <div class="form-group" id="loginButton">
                    <input type="submit" name="submit" class="btn btn-md submitBtn" value="Log In">
                </div>
            </div>
        </div>
    </form>
</div>