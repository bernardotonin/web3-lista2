package exercicio2;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean logado;
        ServletContext contexto = request.getServletContext();
        String user = request.getParameter("usuario");
        String pw = request.getParameter("senha");
        if (user.equals("admin") && pw.equals("admin")){
            logado = true;
            contexto.setAttribute("estaLogado", logado);
            RequestDispatcher dispatcher = request.getRequestDispatcher("logadosucesso.jsp");
            dispatcher.forward(request, response);
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            logado = false;
            contexto.setAttribute("estaLogado", logado);
            request.setAttribute("estaLogado", logado);
            dispatcher.forward(request, response);
        }
    }
}
