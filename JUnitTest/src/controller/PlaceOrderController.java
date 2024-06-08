package controller;

public class PlaceOrderController {
	public boolean validatePhone(String phone) {
		if(phone.length() != 10) return false;
		return true;
	}

}
