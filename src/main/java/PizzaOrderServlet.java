import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/pizza-order.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String size = request.getParameter("size");
            String crust = request.getParameter("crust");
            String sauce = request.getParameter("sauce");
            String toppings = request.getParameter("toppings");
            String address = request.getParameter("delivery-address");

            System.out.println("size: " + size);
            System.out.println("crust: " + crust);
            System.out.println("sauce: " + sauce);
            System.out.println("toppings: " + toppings);
            System.out.println("address: " + address);
    }
}
