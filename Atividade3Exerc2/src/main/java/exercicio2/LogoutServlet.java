package exercicio2;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogoutServlet", value = "/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext contexto = request.getServletContext();

        if(contexto.getAttribute("estaLogado") != null){
            boolean status = (boolean)contexto.getAttribute("estaLogado");
            if(status){
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                contexto.removeAttribute("estaLogado");
                status = false;
                request.setAttribute("deslogado", status);
                dispatcher.forward(request, response);
            }
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
