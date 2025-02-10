function validateForm() {
    var customerName = document.getElementById("cname").value;
    var noItems = parseInt(document.getElementById("noItems").value);
    var price = parseFloat(document.getElementById("price").value);
    var tax = parseFloat(document.getElementById("tax").value);
    var province = document.getElementById("province").value;
    
    var errorMessages = [];

  
    if (customerName.trim() === "") {
        errorMessages.push("The customer name should not be empty.");
    }

 
    if (province.trim() === "") {
        errorMessages.push("The shipping province should not be empty.");
    }

   
    if (noItems <= 0) {
        errorMessages.push("The number of items should be greater than zero.");
    }

   
    if (price <= 0) {
        errorMessages.push("The price of each item should be greater than zero.");
    }


    if (tax <= 0) {
        errorMessages.push("The tax rate should be greater than zero.");
    }

    
    if (errorMessages.length > 0) {
        var errorMess = errorMessages.join("\n");
        alert(errorMess);
        return false;
    }

 
    return true;
}

