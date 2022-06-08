<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/connexion.css">
    <title>Document</title>
</head>
<body>
<div class='card'>
  <h1>Sign-in to Hello</h1>
  <form action='' method='get'>
    <ul>
      <li>
        <label for='user_name'>Username</label>
        <input type='text' id='user_name' name='user-name' required>
      </li>
      <li>
        <label for='user_password'>Password</label>
        <input type='password' id='user_password' name='user-password' min=8 max=15 required>
      </li>
      <li class="button">
        <button type="submit"><b>Login</b></button>
      </li>
    </ul>
  </form>
  <img src=''alt=''>
</div>
</body>
</html>