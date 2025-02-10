Project Overview

ShoppingCart-v1 is a web application developed to calculate the total price of a shopping cart, including item prices, tax rates, and shipping fees. It takes user input through a form, validates the data, and calculates the total price with the necessary taxes and shipping. The project uses Java servlets, HTML, CSS, and JavaScript for validation.
Features

    Input Form: Users can enter details like customer name, number of items, price per item, tax rate, and shipping province.
    Validation: JavaScript validation to ensure input data is correct (non-zero items, positive prices, etc.).
    Servlet Processing: The backend calculates the total cost based on user input and stores the data in session attributes.
    Shipping Fee Calculation: Shipping fees are dynamically determined based on the province selected (Ontario has free shipping, others incur a shipping fee).
    Session Management: Stores user inputs and the calculated total price in the session for further display.

Technologies Used

    Frontend: HTML, CSS, JavaScript
    Backend: Java (Servlets)
    Session Management: Java HTTP Session
    Web Server: Apache Tomcat

Getting Started
Prerequisites

    JDK: Ensure you have the Java Development Kit installed on your machine.
    Apache Tomcat: You’ll need a servlet container like Apache Tomcat to deploy the web application.
    IDE: Use an IDE like Eclipse for Java development and project management.

Steps to Set Up

    Clone the Repository:

git clone https://github.com/yourusername/ShoppingCart-v1.git
cd ShoppingCart-v1

Import into Eclipse:

    Open Eclipse IDE.
    Go to File > Import > Existing Projects into Workspace.
    Select the folder where you cloned the project and click Finish.

Run the Application:

    Right-click on the project in Eclipse.
    Choose Run As > Run on Server.
    Select your Tomcat server or configure one if needed.
    Once the server is running, open your browser and go to http://localhost:8080/ShoppingCart-v1
