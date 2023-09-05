<%-- 
    Document   : agregarVideo
    Created on : 29/08/2023, 5:45:43 p. m.
    Author     : Posgrados
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rockola</title>
    <style>
        body {
            
       background-image: radial-gradient(circle at -14.09% 20.12%, #dcf2e7 0, #daf2ea 3.57%, #d9f3ec 7.14%, #d8f3ef 10.71%, #d7f3f2 14.29%, #d7f2f4 17.86%, #d7f2f6 21.43%, #d7f2f8 25%, #d8f1fa 28.57%, #daf1fc 32.14%, #dcf0fd 35.71%, #deeffe 39.29%, #e0efff 42.86%, #e3eeff 46.43%, #e6edff 50%, #e9ecff 53.57%, #ecebfe 57.14%, #efebfd 60.71%, #f2eafb 64.29%, #f5e9fa 67.86%, #f8e8f8 71.43%, #fae8f5 75%, #fce7f3 78.57%, #fee7f1 82.14%, #ffe7ee 85.71%, #ffe7ec 89.29%, #ffe7e9 92.86%, #ffe7e7 96.43%, #ffe7e4 100%);
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

        /* Estilo para los enlaces tipo botón */
        .button-link {
            background-color: #BFB9FF; /* Morado */
            color: white; /* Texto blanco */
            padding: 10px 20px; /* Espacio alrededor del texto */
            border: none; /* Sin borde */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 30px; /* Bordes redondeados */
             width: 100%;
             padding: 6px;
             margin-top: 8px;
            border: 2px solid #BFB9FF;
            border-radius: 6px;
         
        }

        .button-link:hover {
            background-color: #BA9AFF; /* Cambia el color al pasar el ratón */
               color: #000000;
        }
           form {
            max-width: 400px;
            margin: 0 auto;
            background-image: linear-gradient(335deg, #c9efff 0, #cdeeff 5%, #d1edff 10%, #d6ebff 15%, #dbeaff 20%, #e1e9ff 25%, #e6e7ff 30%, #ebe6ff 35%, #f0e4ff 40%, #f5e3ff 45%, #fae2ff 50%, #fee1fc 55%, #ffe0f8 60%, #ffdff4 65%, #ffdff0 70%, #ffdeec 75%, #ffdee7 80%, #ffdee3 85%, #ffdfdf 90%, #ffdfdb 95%, #ffe0d7 100%);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            text-align: left;
            margin-top: 10px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 6px;
            margin-top: 8px;
            border: 2px solid #ccc;
            border-radius: 6px;
            background-color: #FFE8FD;
        }

        input[type="submit"] {
            background-color: #F7A4FF;
            color: white;
              padding: 10px 20px; /* Espacio alrededor del texto */
            border: none; /* Sin borde */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 30px; /* Bordes redondeados */
             width: 100%;
             padding: 6px;
             margin-top: 8px;
            border: 2px solid #BFB9FF;
            border-radius: 6px;
        }

        input[type="submit"]:hover {
          background-color: #ECBFF0;
             color: #000000;
        }
         a {
            display: block;
            margin-top: 10px;
            text-decoration: none;
        }
             .button-container { 
            background-color: rgba(199, 240, 255, 0.8); /* Fondo semi-transparente para resaltar el formulario */
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            margin: 20px auto;
            padding: 40px;
            max-width: 420px;
             }
            
        .imagenradio {
            width:250px;
          margin-top:280px;
           left: 38px;
            position: absolute;
             top: 0
           
        }
        .imagencosito {
         width: 260px;
            position: absolute;
            top: 0;
            right: 250px; /* Ajusta la distancia desde el lado derecho según tu preferencia */
            margin-top: 230px; 
           
        }
        
        


    </style>
</head>
<body>
<header>
    <h1>Sistema de Reproducción de Videos :) </h1>
</header> 
    <center>
    <p>Bienvenido a la Rocola de Música. Aquí puedes agregar canciones a la lista de reproducción y disfrutar de tu música favorita.</p>
</center>
 <div class="imagencosito">
      <img src= "cositooo2.png"/>
       </div>
<div class="button-container">
    <center>
        <form action="SvVideo" method="POST">
            <label for="idvideo">idVideo:</label>
            <input type="text" name="idvideo" id="idvideo" > <br>

            <label for="titulo">Titulo:</label>
            <input type="text" name="titulo" id="titulo"> <br>

            <label for="autor">Autor:</label>
            <input type="text" name="autor" id="autor"> <br>

            <label for="anio">Año:</label>
            <input type="text" name="anio" id="anio"> <br>

            <label for="categoria">Categoria:</label> 
            <input  id="categoria" name="categoria" type="text" > <br>
            
            <label for="url">Url:</label>
            <textarea id="url" name="url" rows="5" cols="10"></textarea> <br>

            <label for="letra">Letra:</label>
            <textarea id="letra" name="letra" rows="5" cols="10"></textarea> <br>

            <input type="submit" class="button-link" value="Agregar Video">
             <a href="index.jsp" class="button-link">Regresar al menú</a>
             <div class="imagenradio">
      <img src= "radio2.png"/>
       </div>
        </form>
       
    </center>
    
</div>
 
</body>
</html>
