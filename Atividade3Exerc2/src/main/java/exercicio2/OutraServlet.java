package exercicio2;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "OutraServlet", value = "/loginstatus")
public class OutraServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext contexto = request.getServletContext();
        boolean status = (boolean) contexto.getAttribute("estaLogado");
        if (!status){
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            boolean naoLogado = false;
            request.setAttribute("naoLogado", naoLogado);
            dispatcher.forward(request, response);
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("logadosucesso.jsp");
            request.setAttribute("loginStatus", status);
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
