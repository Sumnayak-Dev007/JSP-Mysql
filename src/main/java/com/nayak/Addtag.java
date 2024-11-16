package com.nayak;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebServlet("/demo")
public class Addtag extends HttpServlet {
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
	{

        List<Student> stud=Arrays.asList(new Student(1,"Suman"),new Student(2,"Diksha"),new Student(3,"Aman"),new Student(4,"Tori"));
		request.setAttribute("students",stud);
		RequestDispatcher rd=request.getRequestDispatcher("custom_tag.jsp");
		rd.forward(request, response);
		
	}

}
