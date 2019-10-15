package nl.bioinf.adedic.enzymecutter.servlets.servlets;
import nl.bioinf.adedic.enzymecutter.servlets.enzymecutter.TestingDNA;

/*
 * Copyright (c) 2017 Armin Dedic [a.dedic@st.hanze.nl].
 * All rights reserved.
 */
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EnzymeCutterServlet", urlPatterns = "/enzymecutter")
public class EnzymeCutterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*String inputDNA = request.getParameter("inputDNA");
        String[] selectedEnzymes = request.getParameterValues("selectedEnzymes");
        TestingDNA TD = new TestingDNA(inputDNA, selectedEnzymes);*/
       }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*RequestDispatcher view = request.getRequestDispatcher("enzymecutter.jsp");
        view.forward(request, response);*/
    }
}
