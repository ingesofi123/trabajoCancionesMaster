
package servlets;
import com.umariana.mundo.Video;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {
    
// Creamos el Array llamado 
    
  ArrayList <Video> generoDivision = new ArrayList <> ();
  
    @Override
    public void init() throws ServletException {
        super.init();
       
        ServletContext servletContext = getServletContext();
        
       
        subirVideosDatos(servletContext);
       
    }

    
    
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //captura de los datos 
     String idVideo = request.getParameter("idvideo");
     String titulo = request.getParameter("titulo");
     String autor = request.getParameter("autor");
     String anio = request.getParameter("anio");
     String categoria = request.getParameter("categoria");
     String url = request.getParameter("url");
     String letra = request.getParameter("letra");
     
     try {
         int idVideoInt = Integer.parseInt(idVideo);
         
         //ingresar al objeto 
         
          Video miVideo = new Video (idVideoInt, titulo, autor, anio, categoria, url, letra);
          
    //añado los datos que cree al array
    
     generoDivision.add(miVideo);
     
     } catch (NumberFormatException e) {
         
         e.printStackTrace();
         System.out.println("Ah ocurrido un error" + e.getMessage());
     }
     
    
        
        //agregar el arrayList  al objeto de solicitud como un atributo
        guardarVideoDatos();
        
        request.setAttribute("generoDivision", generoDivision);
        
        //redireccionamos a la pagina web destino 
        
        request.getRequestDispatcher("listarVideos.jsp").forward(request, response);
    }


    private void guardarVideoDatos() {
        try {
           
            String dataPath = getServletContext().getRealPath("/data");

           
            File dataFolder = new File(dataPath);
            if (!dataFolder.exists()) {
                dataFolder.mkdirs();
            }

           
            
            
            String filePath = dataPath + File.separator + "datosVideos.ser";
            FileOutputStream fos = new FileOutputStream(filePath);
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(generoDivision);
            oos.close();
            System.out.println("los datos de videos guardados exitosamente!!: " + filePath);
        } catch (IOException e) {
          e.printStackTrace();
            System.out.println("Error al guardar los datos de el video añadido: " + e.getMessage());
        }
        
    }
      private void subirVideosDatos(ServletContext servletContext) {
       
        
        try {
            String dataPath = servletContext.getRealPath("/data/datosVideos.ser");
            File archivo = new File (dataPath);
            
            if(archivo.exists()) {
           FileInputStream fis = new FileInputStream(dataPath);
                try (ObjectInputStream ois = new ObjectInputStream(fis)) {
                    generoDivision = (ArrayList<Video>) ois.readObject();
                    ois.close();
                    
                }
              
                System.out.println("Los datos que usted buscaban eran desde: " + dataPath);
            }  else {
       
        System.out.println("Ups! el archivo no existe: " + dataPath);
    }
            
        } catch (EOFException e) {
    
    System.out.println("Llegaste al final del archivo! ");
    e.printStackTrace(); 
     }
    catch (IOException  | ClassNotFoundException e) {
            
            e.printStackTrace();
            
            System.out.println("Error al cargar los datos de los videos digitados: " + e.getMessage());
            
        }
        
    }
      @Override
    public String getServletInfo() {
        return "Short description";

}

   
}
