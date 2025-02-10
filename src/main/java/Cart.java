
 
 public class Cart {
	    public static double calculateTotal(int noItems, double price, double tax, double shippingFees) {
	        return shippingFees + noItems * price * (1 + tax / 100);
	    }
	}

 

