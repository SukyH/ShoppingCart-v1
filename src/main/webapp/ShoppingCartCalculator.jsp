<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart Price Calculator</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<header>
    <h1>Shopping Cart Calculator</h1>
</header>

<main>
    <div class="calculator-results">
        <fieldset>
            <legend>Pricing Summary</legend>
            <p><strong>Customer Name:</strong> <%= request.getAttribute("customerName") %></p>
            <p><strong>Number of Items:</strong> <%= request.getAttribute("noItems") %></p>
            <p><strong>Price per Item:</strong> $<%= request.getAttribute("price") %></p>
            <p><strong>Tax Rate:</strong> <%= request.getAttribute("tax") %>%</p>
            <p><strong>Shipping Province:</strong> <%= request.getAttribute("province") %></p>
            <p><strong>Shipping Fees:</strong> $<%= request.getAttribute("shippingFees") %></p>

            <p>The total price is calculated as:</p>
            <p><strong>total = (noItems * price * (1 + tax / 100)) + shippingFees</strong></p>
            <h3><strong>Total Price:</strong> $<%= String.format("%.2f", request.getAttribute("total")) %></h3>
        </fieldset>
    </div>
</main>

<footer>
    <p>Created for E-Commerce Lab</p>
</footer>
</body>
</html>
