<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- sentencias de import necesarias para jdbc-->
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>

<%
    String nombre = request.getParameter("nombre");
    String telefono = request.getParameter("telefono");
    String correo = request.getParameter("correo");

    Connection conexion = null;
    Statement sentencia = null;

    int filas = 0;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        
        conexion = DriverManager.getConnection(
                "jdbc:mysql://localhost/bd_agenda",
                "root",
                "");
        sentencia = conexion.createStatement();

        String consultaSQL = "insert into contactos (nombre,telefono,correo) values ";
        consultaSQL += "('" + nombre + "','" + telefono + "','" + correo + "')";

        filas = sentencia.executeUpdate(consultaSQL);
        response.sendRedirect("index.jsp");
    } catch (ClassNotFoundException e) {
        System.out.println("Error en la carga del driver" + e.getMessage());
    } catch (SQLException e) {
        System.out.println("Error accediendo a la base de datos"
                + e.getMessage());
    }
%>