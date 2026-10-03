<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>H.M Clothes - Login</title>
  <style>
    body {
      margin: 0;
      font-family: "Poppins", sans-serif;
      background: linear-gradient(135deg, #ff3f6c, #ffb6c1);
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .login-container {
      background: white;
      padding: 40px 50px;
      border-radius: 15px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
      width: 350px;
      text-align: center;
      animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    h2 {
      color: #ff3f6c;
      margin-bottom: 20px;
    }

    input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 15px;
    }

    input:focus {
      outline: none;
      border-color: #ff3f6c;
      box-shadow: 0 0 5px #ff9bb5;
    }

    button {
      width: 100%;
      padding: 12px;
      margin-top: 10px;
      background-color: #ff3f6c;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      transition: background 0.3s;
    }

    button:hover {
      background-color: #e63958;
    }

    .links {
      margin-top: 15px;
      font-size: 14px;
    }

    .links a {
      color: #ff3f6c;
      text-decoration: none;
      font-weight: bold;
    }

    .links a:hover {
      text-decoration: underline;
    }

    .logo {
      width: 60px;
      margin-bottom: 15px;
    }
  </style>
</head>
<body>
	<form action="/savedata" method=post>
		
  <div class="login-container">
    <img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/5/53/H%26M-Logo.svg" alt="H&M Logo">
    <h2>Login to H.M Clothes</h2>

    <form id="loginForm">
      <input type="text" id="phone" placeholder="Phone Number" required>
      <input type="password" id="password" placeholder="Password" required>
      <button type="submit">Log In</button>
    </form>

    <div class="links">
      <p>Don't have an account? <a href="#">Sign up</a></p>
    </div>
  </div>

  <script>
    document.getElementById("loginForm").addEventListener("submit", function(e){
      e.preventDefault();
      
      const phone = document.getElementById("phone").value;
      const password = document.getElementById("password").value;

      // 👇 later you can connect this to Spring Boot API
      fetch("http://localhost:8080/api/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ phoneNumber: phone, password: password })
      })
      .then(res => {
        if(res.ok) {
          alert("✅ Login Successful!");
          window.location.href = "index.html"; // redirect to main page
        } else {
          alert("❌ Invalid phone number or password!");
        }
      })
      .catch(err => console.error("Error:", err));
    });
  </script>
</body>
</html>
