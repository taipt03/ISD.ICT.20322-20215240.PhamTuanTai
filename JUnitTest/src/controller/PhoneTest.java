package controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class PhoneTest {

	@Test
	void test() {
		PlaceOrderController ctrl = new PlaceOrderController();		
		boolean isValid = ctrl.validatePhone("0987654321");
		assertEquals(true, isValid);
		
	}

}
