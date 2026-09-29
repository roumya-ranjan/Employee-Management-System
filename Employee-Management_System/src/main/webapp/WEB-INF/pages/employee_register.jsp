<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employee Registration</title>
<style>
:root {
	--bg: #eef3f6;
	--ink: #14213d;
	--muted: #5b6b82;
	--accent: #0f766e;
	--line: #d5dee6;
}

* {
	box-sizing: border-box;
}

body {
	margin: 0;
	padding: 40px 6vw;
	font-family: "Segoe UI", Arial, sans-serif;
	background: var(--bg);
	color: var(--ink);
}

h1 {
	text-align: center;
	margin: 0 0 24px;
	font-size: 1.8rem;
}

.card {
	max-width: 480px;
	margin: 0 auto;
	background: #fff;
	border: 1px solid var(--line);
	border-radius: 12px;
	padding: 28px;
}

.field {
	display: flex;
	flex-direction: column;
	gap: 6px;
	margin-bottom: 18px;
}

label {
	font-size: .88rem;
	font-weight: 600;
	color: var(--muted);
}

input, select {
	font: inherit;
	padding: 12px 14px;
	border: 1px solid var(--line);
	border-radius: 8px;
	background: #fff;
	color: var(--ink);
	width: 100%;
}

input:focus, select:focus {
	outline: 3px solid rgba(15, 118, 110, .25);
	border-color: var(--accent);
}

.actions {
	display: flex;
	gap: 12px;
	margin-top: 8px;
}

.btn {
	font: inherit;
	font-weight: 700;
	cursor: pointer;
	border: 0;
	padding: 13px 26px;
	border-radius: 10px;
	color: #fff;
	background: var(--accent);
}

.btn:hover {
	background: #0b5a54;
}

.btn.reset {
	background: #e3e9ef;
	color: var(--ink);
}

.btn.reset:hover {
	background: #d5dee6;
}

.back {
	text-align: center;
	margin-top: 24px;
}

.back a {
	color: var(--accent);
	font-weight: 700;
	text-decoration: none;
}

.back a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<h1>Employee Registration</h1>

	<frm:form modelAttribute="emp" action="register" method="post"
		cssClass="card">

		<div class="field">
			<label for="ename">Name</label>
			<frm:input path="ename" id="ename" maxlength="30" required="required" />
		</div>

		<div class="field">
			<label for="job">Job</label>
			<frm:input path="job" id="job" maxlength="20" required="required" />
		</div>

		<div class="field">
			<label for="sal">Salary</label>
			<frm:input path="sal" id="sal" type="number" step="0.01" min="0"
				required="required" />
		</div>

		<div class="field">
			<label for="deptno">Deptno</label>
			<frm:select path="deptno" id="deptno">
				<frm:option value="10">10</frm:option>
				<frm:option value="20">20</frm:option>
				<frm:option value="30">30</frm:option>
			</frm:select>
		</div>

		<div class="actions">
			<input type="submit" value="Register" class="btn"> <input
				type="reset" value="Reset" class="btn reset">
		</div>

	</frm:form>

	<div class="back">
		<a href="show_report">Back to report</a>
	</div>

</body>
</html>