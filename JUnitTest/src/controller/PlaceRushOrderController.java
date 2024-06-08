package controller;

import java.util.List;

import enitity.Product;

public class PlaceRushOrderController {
	private static final List<String> ELIGIBLE_REGIONS = List.of("Dong Da", "Ha Dong", "Hai Ba Trung","Thanh Xuan");
	
	public boolean checkEligible(String address) {
        return ELIGIBLE_REGIONS.contains(address);
    }

}
