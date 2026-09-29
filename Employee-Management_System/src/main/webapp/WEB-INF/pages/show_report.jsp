<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employees</title>
<style>
  :root { --bg:#eef3f6; --ink:#14213d; --muted:#5b6b82; --accent:#0f766e; --line:#d5dee6; }
  * { box-sizing: border-box; }
  body {
    margin: 0; padding: 40px 6vw;
    font-family: "Segoe UI", Arial, sans-serif;
    background: var(--bg); color: var(--ink);
  }
  h1 { text-align: center; margin: 0 0 24px; font-size: 1.8rem; }
  .table-wrap {
    max-width: 900px; margin: 0 auto;
    background: #fff; border: 1px solid var(--line);
    border-radius: 12px; overflow-x: auto;
  }
  table { width: 100%; border-collapse: collapse; }
  th, td { padding: 14px 16px; text-align: left; border-bottom: 1px solid var(--line); }
  th { background: var(--ink); color: #fff; font-weight: 600; text-transform: uppercase; font-size: .8rem; letter-spacing: .05em; }
  tbody tr:nth-child(even) { background: #f6f9fb; }
  tbody tr:hover { background: #e6f4f2; }
  tr:last-child td { border-bottom: 0; }
  .no-data { text-align: center; color: #b42318; font-size: 1.6rem; margin-top: 40px; }
  .home { text-align: center; margin-top: 30px; }
  .home a {
    display: inline-block; background: var(--accent); color: #fff;
    text-decoration: none; font-weight: 700;
    padding: 12px 28px; border-radius: 10px;
  }
  .home a:hover { background: #0b5a54; }
</style>
</head>
<body>

<c:choose>
  <c:when test="${!empty empsList}">
    <h1>Employee Details</h1>
    <div class="table-wrap">
      <table>
       
          <tr>
            <th>empno</th>
            <th>ename</th>
            <th>job</th>
            <th>salary</th>
            <th>deptno</th>
          </tr>
        
        <tbody>
          <c:forEach var="emp" items="${empsList}">
            <tr>
              <td>${emp.empno}</td>
              <td>${emp.ename}</td>
              <td>${emp.job}</td>
              <td>${emp.sal}</td>
              <td>${emp.deptno}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </c:when>
  <c:otherwise>
    <h1 class="no-data">No Data</h1>
  </c:otherwise>
</c:choose>

<div class="home"><a href="./">Home</a></div>

</body>
</html>