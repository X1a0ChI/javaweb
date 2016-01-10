package com.x1a0ch1.lession1;

import java.io.IOException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("GBK");
		response.setContentType("text/html;charSet=GBK");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String[] color=request.getParameterValues("color");
		String nation=request.getParameter("country");
		PrintStream out=new PrintStream(response.getOutputStream());
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet测试</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("名字:"+name+"<hr/>");
		out.println("性别:"+gender+"<hr/>");
		out.println("颜色:");
		for(String c:color){
			out.println(c+" ");
		}
		out.println("<hr/>");
		out.println("喜欢的颜色:");
		out.println("来自: "+nation+"<hr/>");
		out.println("</body>");
		out.println("</html>");
	}

}
