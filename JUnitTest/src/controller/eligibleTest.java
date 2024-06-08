package controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class eligibleTest {

	@Test
	void test() {
		PlaceRushOrderController rush= new PlaceRushOrderController();
		boolean output = rush.checkEligible("Thanh Xuan");
		assertEquals(true, output);
		
	}

}
