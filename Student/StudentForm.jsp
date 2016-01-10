<form action="AddStudent.jsp" methos="post">
<table>
<tr>
<td>学生学号:</td>
<td><input type="text" name="stuNum"/></td> 
</tr>
<tr>
<td>学生姓名:</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td>学生年龄:</td>
<td><input type="text" name="age"/></td>
</tr>
<tr>
<td>学生性别:</td>
<td>
<input type="radio" name="sex" value="男"/>男
<input type="radio" name="sex" value="女"/>女
</td>
</tr>
<tr>
<td><input type="submit" value="添加"/>
<input type="reset"value="重置"/>
</td>
</tr>
</table>
</form>