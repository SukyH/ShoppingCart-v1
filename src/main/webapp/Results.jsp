<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart Price Calculator</title>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <script src="validations.js"></script> <!-- Link to external JavaScript file --> 
</head>
<body>
<header>
    <h1>Shopping Cart Calculator</h1>
</header>

<main>
    <div class="calculator-results">
        <fieldset>
            <legend>Shopping Cart</legend>
            <p><strong>Specified pricing Information:</strong></p>
            <ul>
                <li><strong>Customer Name:</strong> <%= session.getAttribute("customerName") != null ? session.getAttribute("customerName") : "N/A" %>
                </li>
                <li><strong>Number of Items:</strong>
                    <%= session.getAttribute("noItems") != null ? session.getAttribute("noItems") : "N/A" %>
                </li>
                <li><strong>Price of Each Item:</strong> $
                    <%= session.getAttribute("price") != null ? session.getAttribute("price") : "0.00" %>
                </li>
                <li><strong>Tax Rate:</strong>
                    <%= session.getAttribute("tax") != null ? session.getAttribute("tax") : "0" %>%
                </li>
            </ul>

            <p><strong>The Shopping Calculator inferred the following information:</strong></p>
            <ul>
                <li><strong>Shipping Fees:</strong> $
                    <%= session.getAttribute("shippingFees") != null ? session.getAttribute("shippingFees") : "0.00" %>
                </li>
            </ul>

            <h3><strong>Total Price:</strong> $
                <%= session.getAttribute("total") != null ? String.format("%.2f", (Double) session.getAttribute("total")) : "0.00" %>
            </h3>
        </fieldset>
    </div>
</main>

<footer>
    <p>Created for E-Commerce Lab</p>
</footer>
</body>
</html>

