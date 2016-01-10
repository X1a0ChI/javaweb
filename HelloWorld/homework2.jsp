<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<html>  
  <head>  
  <!-- 用户提交验证 -->  
  <script type="text/javascript" language="javascript">  
  <!--   
  function checkNum(){  
    if(form1.num1.value==""){  
    window.alert("num1 值不能为空 ！！哈哈");  
    return false;  
    }  
    //判断num1是不是一个数  
    if(Math.round(form1.num1.value)!=(form1.num1.value)){  
    window.alert("num1不是一个整数")  
    return false;  
    }  
    if(form1.num2.value==""){  
    window.alert("num2 值不能为空 ！！哈哈");  
    return false;  
    }  
    //判断num2是不是一个数  
    if(Math.round(form1.num2.value)!=(form1.num2.value)){  
    window.alert("num2不是一个整数")  
    return false;  
      
  }  
  }  
  -->  
  </script>  
  </head>  
  <h1>我的计算器</h1>  
  <hr>  
  <body>  
    <form  name ="form1" action="result.jsp" method ="post">  
    <input type="text" name ="num1" ></input><br>  
     
    <select name="flag">  
    <option value=+>+</option>  
    <option value=->-</option>  
    <option value=*>*</option>   
    <option value=/>/</option>  
    </select><br>  
     <input type="text" name="num2"/></input><br>  
    <input type="submit" value="提交" onclick="return checkNum();"></input>  
    </form>  
    <hr>  
  </body>  
</html>