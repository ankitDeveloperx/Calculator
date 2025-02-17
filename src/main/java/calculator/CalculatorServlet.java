package calculator;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        
        try {
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");
            String operator = request.getParameter("operator");

            if (num1 != null && num2 != null && operator != null && !num1.isEmpty() && !num2.isEmpty()) {
                double number1 = Double.parseDouble(num1);
                double number2 = Double.parseDouble(num2);
                double result = 0;

                switch (operator) {
                    case "+": result = number1 + number2; break;
                    case "-": result = number1 - number2; break;
                    case "*": result = number1 * number2; break;
                    case "/": 
                        if (number2 != 0) {
                            result = number1 / number2;
                        } else {
                            out.print("Error: Division by zero");
                            return;
                        }
                        break;
                    case "%":
                        if (number2 != 0) {
                            result = number1 % number2;
                        } else {
                            out.print("Error: Modulus by zero");
                            return;
                        }
                        break;
                    default:
                        out.print("Error: Invalid Operator");
                        return;
                }
                out.print(result);
            } else {
                out.print("Invalid Input");
            }
        } catch (Exception e) {
            out.print("Error: " + e.getMessage());
        }
    }
}


