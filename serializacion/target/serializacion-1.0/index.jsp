<%-- 
    Document   : index
    Created on : 29/08/2023, 5:34:41 p. m.
    Author     : Posgrados
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.umariana.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rockola</title>
    <style>
        header {
            background-image: linear-gradient(185deg, #e4f3e8 0, #e2f4ea 3.33%, #e1f4ec 6.67%, #dff4ee 10%, #def4f0 13.33%, #ddf4f2 16.67%, #ddf4f4 20%, #dcf4f6 23.33%, #ddf4f8 26.67%, #ddf3fa 30%, #def3fb 33.33%, #e0f3fd 36.67%, #e1f2fe 40%, #e3f1fe 43.33%, #e6f1ff 46.67%, #e8f0ff 50%, #ebefff 53.33%, #edeffe 56.67%, #f0eefe 60%, #f2edfd 63.33%, #f5edfb 66.67%, #f7ecfa 70%, #f9ecf8 73.33%, #fbebf6 76.67%, #fdebf4 80%, #feeaf2 83.33%, #ffeaf0 86.67%, #ffeaee 90%, #ffeaec 93.33%, #ffebea 96.67%, #ffebe8 100%);
            text-align: center;
             padding: 10px 0;
        }

        header2 {
            background-color: #FF4DF1;
            color: #2B316A;
            text-align: center;
            padding: 1rem 0;
        }

        body {
            background-image: linear-gradient(270deg, #e5ebff 0, #eaeaff 10%, #efe8ff 20%, #f3e7ff 30%, #f8e6ff 40%, #fce5ff 50%, #ffe4fc 60%, #ffe3f8 70%, #ffe3f5 80%, #ffe2f1 90%, #ffe2ed 100%);
            margin: 0;
            padding: 0;
        }

        li {
            margin: 8px 0;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        a.button-link {
            text-decoration: none;
            background-color: #8BDCFA;
            color: #203833;
            padding: 19px 50px;
            border-radius: 5px;
            display: inline-block;
            transition: background-color 0.3s ease;
            border-radius: 30px;
        }

        a.button-link:hover {
            color: #FFFFFF; /* Cambiar a color rosa al pasar el ratón sobre el enlace */
        }

    

        h1 {
            color:#FF4DF1;
            text-align: center;
            font-size: 36px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }

        p {
            font-size: 18px;
            color: #002B3A;
            margin-bottom: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .agregarrVideo {
            display: flex;
            justify-content: flex-start;
            align-items: flex-start;
            padding: 20px;
        }

        .button-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
             margin-top:150px;
            
        }

        .buscarNombre {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .buscarCategoria {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .jukebox-image {
            width: 300px;
            height: 300px;
            margin-top: 20px;
        }

     
        /* Estilo para la lista de enlaces */

        /* Alinea los párrafos junto a los enlaces */
        li p {
            display: inline;
        }

        /* Estilo para los enlaces */
        a {
            text-decoration: none;
            font-size: 24px;
            margin-left: 10px;
        }

        /* Cambia el color de los enlaces al pasar el ratón sobre ellos */
        a:hover {
            background-color: #ECBFF0;
            color: #FFFFFF;
        }
        
        .imagenrockola {
            width:250px;
          margin-top:290px;
           left: 38px;
            position: absolute;
             top: 0
           
        }
        .imagenrockola2 {
         width: 260px;
            position: absolute;
            top: 0;
            right: 250px; /* Ajusta la distancia desde el lado derecho según tu preferencia */
            margin-top: 300px; 
           
        }
         footer {
      background-color: #CAFCFF;
      color: #000000;
      text-align: center;
      padding: 1rem 0;
       margin-top:190px;
    }
        
    </style>
</head>

<body>
<header>
    <h1>Reproductor de Videos ❤</h1>
</header>
<header2> 
<center>
    <h2>Bienvenido a la rockola de musica! en donde podras añadir tus canciones favoritas y escucharlas cuando tu quieras! ❤ </h2>
</center>
</header2> 
<div class="button-container">
    <div class="imagenrockola">
      <img src= "rockola2.png"/>
       </div>
    <center> 
    <div class="agregarrVideo">
        <ul>
            <li>
                <a class="button-link" href="agregarVideo.jsp" target="_blank">Ingrese un nuevo video </a>
            </li>
            <li>
                <a class="button-link" href="listarVideos.jsp" target="_blank">Mostrar canciones registradas </a>
            </li>
            <li>
                <a class="button-link" href="listarVideos.jsp" target="_blank">Mostrar por categoria </a>
            </li>
            <li>
                <a class="button-link" href="listarVideos.jsp" target="_blank">Mostrar por nombre</a>
            </li>
 
        </ul>        
       </div>
        </center>
  
</div>
  <div class="imagenrockola2">
      <img src= "rockola2.png"/>
       </div>
<footer>
    <j> SOFÌA BURBANO BASTIDAS - ESTRUCTIRAS DE DATOS I 🖥🧠</j>
  </footer>
</section>

</body>
</html>

