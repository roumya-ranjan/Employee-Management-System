<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Something went wrong</title>
<style>
  body {
    margin: 0; min-height: 100vh;
    display: flex; flex-direction: column; justify-content: center;
    padding: 0 6vw;
    font-family: "Plus Jakarta Sans", "Segoe UI", Arial, sans-serif;
    background: #eef3f6; color: #14213d;
  }
  h1 { font-size: clamp(2rem, 5vw, 3.4rem); margin: 0 0 12px; letter-spacing: -0.02em; }
  p { color: #5b6b82; font-size: 1.05rem; margin: 0 0 28px; }
  a {
    align-self: flex-start; background: #0f766e; color: #fff;
    text-decoration: none; font-weight: 700;
    padding: 14px 28px; border-radius: 10px;
  }
  a:hover { background: #0b5a54; }
  a:focus-visible { outline: 3px solid #14213d; outline-offset: 3px; }
</style>
</head>
<body>
  <h1>Something went wrong.</h1>
  <p>The page could not be opened. Go back to the home page and try again.</p>
  <a href="${pageContext.request.contextPath}/">Go to home page</a>
</body>
</html>