

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.umariana.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
            background-color: #F4E1FF;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }
           header {
            background-color: #CEDDFF;
            color: #2B316A;
            text-align: center;
            padding: 1rem 0;
        }
         .lista {
            width:150px;
          margin-top:200px;
           left: 700px;
            position: absolute;
            right: 250px; /* Ajusta la distancia desde el lado derecho según tu preferencia */
            margin-top: -150px; 
        }
        .pollito{
         width: 600px;
            position: absolute;
            top: 0;
            right: 500px; /* Ajusta la distancia desde el lado derecho según tu preferencia */
            margin-top: -4px; 
           
        }
     
        </style>
    </head>
    <body>
        <header> 
        <h1> Listar Videos </h1>
        </header>
       
        <div>
              <div class="lista">
      <img src= "lista2.png" width="150" height="200" alt="" />
       </div>
            <center>
               
       <%
            
            ArrayList <Video> generoDivision = null;
            // Obtener la ruta real del archivo de datos
            String dataPath = application.getRealPath("/data/datosVideos.ser");
            
            // Repetimos el proceso de carga de datos porque:
            // Si invocas directamente la página JSP de listar videos, el request no tiene el atributo que estás buscando
            // Es nulo, de ahí que te dé ese error. @RubioRic (Stack Overflow en español)
            
            File archivo = new File(dataPath);
            if (archivo.exists()) {
                FileInputStream fis = new FileInputStream(dataPath);
                ObjectInputStream ois = new ObjectInputStream(fis);
                generoDivision  = (ArrayList<Video>) ois.readObject();
                ois.close();
                System.out.println("Datos de videos cargados exitosamente desde: " + dataPath);
            }
            
            // Obtener array list de la solicitud
            // Realizamos un cambios de out.print a strong para que la interfaz se adapte mas flexiblemnte
            // Pero respetamos la logica de Java
            
             if (generoDivision != null) {
                System.out.println("Se cargaron " + generoDivision.size() + " videos exitosamente añadidos");
                for (Video videoAgregado : generoDivision) {
                
        %>
        
                    <div class="video-item">
                        <strong> IdVideo: </strong> <%= videoAgregado .getIdVideo() %><br>
                        <strong> Titulo: </strong> <%= videoAgregado .getTitulo() %><br>
                        <strong> Autor: </strong> <%= videoAgregado .getAutor() %><br>
                        <strong> Año: </strong> <%= videoAgregado .getAnio() %><br>
                        <strong> Categoria: </strong> <%=videoAgregado .getCategoria() %><br>
                        <strong> Url: </strong> <%= videoAgregado .getUrl() %><br>
                        <strong> Letra: </strong> <%= videoAgregado .getLetra() %><br>
                    </div>
        <%
                }
            } else {
                out.print("No hay videos disponibles.");
            }
        %>
        
        <div class="pollito">
      <img src= "pollito.png"/>
       </div>
         <a href="index.jsp" class="button-link">Regresar al menú</a>
        </center>
        </div>
    </body>
</html>
