import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")

public class HelloWorldServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter write = res.getWriter();

        //write.println("<h1> Hello World! </h1>");
        String name = req.getParameter("name");

        if (name != null) {
            write.println("<h1> Hello " + name + "! </h1>");
        } else {
            write.println("<h1> Hello World! </h1>");
        }
    }
}
