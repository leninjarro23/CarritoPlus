<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Producto"%>
<%
  if(session.getAttribute("almacen")==null){
  ArrayList<Producto> lisaux=new ArrayList<Producto>();
  session.setAttribute("almacen",lisaux);
  }
  ArrayList<Producto> almacen=(ArrayList<Producto>)session.getAttribute("almacen");
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carrito de compras 2</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="0"></td>
                </tr>
                <tr>
                    <td>Producto</td>
                    <td><input type="text" name="producto" value=""></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="text" name="cantidad" value="0"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="0"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="PROCESAR"></td>
                </tr>
            </table>
            
        </form>
        
        <a href="MainServlet">Vaciar carrito</a>
        
        <h2>Contenido del carrito</h2>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th></th>
            </tr>
            <%
                if(almacen !=null){
                for(Producto p: almacen){
            %>
            <tr>
                <th><%=p.getId()%></th>
                <th><%=p.getProducto()%></th>
                <th><%=p.getCantidad()%></th>
                <th><%=p.getPrecio()%></th>
                <th>X</th>
            </tr>
            <%
                }
             }
            %>
        </table>
    </body>
</html>
