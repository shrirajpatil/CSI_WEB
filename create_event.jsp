<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form>

<div class="id">
<label>The Unique Id of the event is:-</label>
<input type="textbox" name="ev_id">
</div>

<div>
<label>Add the brocheure</label>
<input type="file" name="brochure" accept=".pdf,.doc">
</div>

<div>
<label>Staff Coordinator</label>
<input type="textbox" name="staff_co">
</div>

<div>
<label>Student Coordinator</label>
<input type="textbox" name="stu_co">
</div>

<div>
<label>Resources person</label>
<input type="textbox" name="res_person">
</div>

<div>
<label>Enter a short summary</label>
<textarea name="summary"></textarea>
</div>

<div>
<label>Add the images</label>
<input type="file" name="brochure" accept=".pdf,.doc">
</div>

<div>
<label>Add the sample certifictae</label>
<input type="file" name="brochure" accept=".pdf,.doc">
</div>

<input type=Submit>
</form>
</body>
</html>