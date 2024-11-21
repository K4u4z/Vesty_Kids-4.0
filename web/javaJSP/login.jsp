<%@page import="javaBeans.Usuario"%>
<%  
    String email = request.getParameter("txtLogin"); // captura email do form 
    String senha = request.getParameter("passSenha"); // captura senha do form 
    
    if (email == null)  out.println("campo login está nulo");
    
    Usuario user = new Usuario();
    
    user.email = email;
    user.senha = senha;
    
    
   if ( user.getLogin()== true ) { // faz o login no objeto user
        response.sendRedirect("../index.jsp?email=" + user.email);// carrega a página de sistema
    } else {
       String sHTML="<center>Opa! Login ou Senha não encontrados! Tente Novamente! <br>"
       + "<a href = '../index.html'> Voltar </a></center>";
       out.println(sHTML);
    }
 %>