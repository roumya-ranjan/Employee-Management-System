<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employee Management</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;700;800&display=swap" rel="stylesheet">
<style>
  :root {
    --bg: #eef3f6;
    --ink: #14213d;
    --muted: #5b6b82;
    --accent: #0f766e;
    --accent-dark: #0b5a54;
  }
  * { box-sizing: border-box; }
  html, body { height: 100%; margin: 0; }
  body {
    font-family: "Plus Jakarta Sans", "Segoe UI", Arial, sans-serif;
    background: var(--bg);
    color: var(--ink);
    display: flex;
    flex-direction: column;
  }
  header {
    padding: 20px 6vw;
    display: flex;
    align-items: center;
    gap: 12px;
    font-weight: 700;
  }
  .logo {
    width: 34px; height: 34px;
    background: var(--ink);
    color: #fff;
    border-radius: 8px;
    display: grid; place-items: center;
    font-size: 15px;
  }
  main {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 0 6vw 8vh;
  }
  h1 {
    font-size: clamp(2.4rem, 6vw, 4.6rem);
    line-height: 1.05;
    font-weight: 800;
    letter-spacing: -0.03em;
    margin: 0 0 18px;
    max-width: 16ch;
  }
  p.lead {
    font-size: 1.1rem;
    line-height: 1.6;
    color: var(--muted);
    max-width: 46ch;
    margin: 0 0 32px;
  }
  a.report {
    align-self: flex-start;
    background: var(--accent);
    color: #fff;
    text-decoration: none;
    font-weight: 700;
    font-size: 1.05rem;
    padding: 16px 30px;
    border-radius: 10px;
    transition: background .15s, transform .15s;
  }
  a.report:hover { background: var(--accent-dark); transform: translateY(-2px); }
  a.report:focus-visible { outline: 3px solid var(--ink); outline-offset: 3px; }
  footer { padding: 16px 6vw; color: var(--muted); font-size: .85rem; }
  @media (prefers-reduced-motion: reduce) { a.report { transition: none; } }
</style>
</head>
<body>
  <header>
    <div class="logo">EM</div>
    <span>Employee Management</span>
  </header>

  <main>
    <h1>Keep every employee record in one place.</h1>
    <p class="lead">View your team, add new people, update details, and remove records that are no longer needed.</p>
    <a class="report" href="${pageContext.request.contextPath}/report">Show report</a>
  </main>

  <footer>Employee Management Project</footer>
</body>
</html>