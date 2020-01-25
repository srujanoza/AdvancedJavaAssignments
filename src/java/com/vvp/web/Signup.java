/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vvp.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
public class Signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String pwd = request.getParameter("password");
        String confpwd = request.getParameter("confpwd");
        String email = request.getParameter("emailId");
        String address = request.getParameter("address");
        String[] hobbies = request.getParameterValues("hobbies");
        try {
            //username validation
            char firstLetterOfUser = username.charAt(0);
            if(!((firstLetterOfUser>='A' && firstLetterOfUser<='Z') || (firstLetterOfUser>='a' && firstLetterOfUser<='z')))
            {
                out.println("Username is invalid" + "<br>");
            }
            if(username.length()<6)
            {
                out.println("Username length is short<br>");
            }
            //password verification
            if(!(pwd.equals(confpwd)))
            {
                out.println("Confirm password doesn't match password<br>");
            }
            //email validation
            char firstLetter = email.charAt(0);
			if(!((firstLetter>='0' && firstLetter<='9') || (firstLetter>='a' && firstLetter<='z')))
			{
				System.out.println("Invalid Email id<br>");
			}
			String emailName[] = email.split("@");
			int lengthOfName = emailName[0].length();
			if(lengthOfName<8 || lengthOfName>20)
			{
				System.out.println("Invalid Email id. Email name must be 8 characters long<br>");
			}
			for(int i=0;i<lengthOfName;i++)
			{
				char ch = email.charAt(i);
				if(!((ch>='0' && ch<='9') || (ch>='a' && ch<='z') ||(ch=='.') || (ch=='_')))
				{
				
					System.out.println("Invalid. Special symbols are not allowed<br>");
					System.exit(0);
				}
			}
			int atTheRatePosition = email.indexOf('@');
			if(atTheRatePosition==-1)
			{
				System.out.println("@ symbol is must<br>");
			}
			int dotPosition = email.indexOf('.');
			if(dotPosition==-1)
			{
				System.out.println(". is must<br>");
			}
			if((dotPosition - atTheRatePosition) 	<= 2)	
			{
				System.out.println("Invalid.<br>");
			}
                        
                        String[] testTheAddress = address.split("\\n");
                        if(testTheAddress.length < 3)
                        {
                            out.println("Address should have minimum 3 lines.<br>");
                        }
                       if(hobbies.length < 3)
                        {
                            out.println("Atleast 3 hobbies should be selected.<br>");
                        }

            
        } finally {
            out.close();    
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
