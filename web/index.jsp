<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HT
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <h1>Listado de contactos</h1>
            <p><a href="formulario.jsp">Nuevo contacto</a></p>
            <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                </tr>
                <%
                    Connection conexion = null;
                    Statement sentencia = null;
                    ResultSet rs = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");

                        conexion = DriverManager.getConnection("jdbc:mysql://localhost/bd_agenda",
                                "root",
                                "");
                        sentencia = conexion.createStatement();

                        String consultaSQL = "select * from contactos";

                        rs = sentencia.executeQuery(consultaSQL);
                        //5
                        while (rs.next()) {%>
                <tr>
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("telefono")%></td>
                    <td><%=rs.getString("correo")%></td>
                </tr>
                <% }
                    } catch (ClassNotFoundException e) {
                        System.out.println("Error en la carga del driver"
                                + e.getMessage());
                    } catch (SQLException e) {
                        System.out.println("Error accediendo a la base de datos"
                                + e.getMessage());
                    }
                %>
            </table>  
        </body>
    </html>
