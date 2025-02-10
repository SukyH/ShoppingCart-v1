import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class CalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ServletContext context = getServletContext();  

   
        String customerName = request.getParameter("cname");
        int noItems = Integer.parseInt(request.getParameter("noItems"));
        double price = Double.parseDouble(request.getParameter("price"));
        String province = request.getParameter("province");
        double tax = Double.parseDouble(request.getParameter("tax"));
        double shippingFees;
        
        if (province.equalsIgnoreCase("Ontario")) {
            shippingFees = 0.0;
        } else {
            shippingFees = 7.99;
        }


        double total = Cart.calculateTotal(noItems, price, tax, shippingFees);

        
        context.setAttribute("totalPrice", total);

      
        session.setAttribute("customerName", customerName);
        session.setAttribute("noItems", noItems);
        session.setAttribute("price", price);
        session.setAttribute("province", province);
        session.setAttribute("tax", tax);
        session.setAttribute("shippingFees", shippingFees);
        session.setAttribute("total", total);

       
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Results.jsp");
        dispatcher.forward(request, response);
    }
}

