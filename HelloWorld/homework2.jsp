<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<html>  
  <head>  
  <!-- �û��ύ��֤ -->  
  <script type="text/javascript" language="javascript">  
  <!--   
  function checkNum(){  
    if(form1.num1.value==""){  
    window.alert("num1 ֵ����Ϊ�� ��������");  
    return false;  
    }  
    //�ж�num1�ǲ���һ����  
    if(Math.round(form1.num1.value)!=(form1.num1.value)){  
    window.alert("num1����һ������")  
    return false;  
    }  
    if(form1.num2.value==""){  
    window.alert("num2 ֵ����Ϊ�� ��������");  
    return false;  
    }  
    //�ж�num2�ǲ���һ����  
    if(Math.round(form1.num2.value)!=(form1.num2.value)){  
    window.alert("num2����һ������")  
    return false;  
      
  }  
  }  
  -->  
  </script>  
  </head>  
  <h1>�ҵļ�����</h1>  
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
    <input type="submit" value="�ύ" onclick="return checkNum();"></input>  
    </form>  
    <hr>  
  </body>  
</html>