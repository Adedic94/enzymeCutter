package nl.bioinf.adedic.enzymecutter.servlets.servlets;

import nl.bioinf.adedic.enzymecutter.servlets.enzymecutter.TestingDNA;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DnaCutterServlet", urlPatterns = "/home")
public class DnaCutterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(925);

        String inputDNA = request.getParameter("inputDNA");
        String[] selectedEnzymes = request.getParameterValues("selectedEnzymes");

        TestingDNA TD = new TestingDNA(inputDNA, selectedEnzymes);
        String frag = TD.digestDNA();
        ArrayList<Double> gcPerc = TD.gcPercentage;
        ArrayList<Double> molWeight = TD.weights;

        request.setAttribute("fragments", TD.toString());
        request.setAttribute("frag", frag);
        request.setAttribute("gcPerc", gcPerc);
        request.setAttribute("molWeight", molWeight);
        RequestDispatcher view = request.getRequestDispatcher("results.jsp");
        view.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
