package enitity;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class productTest {

	@Test
	void test() {
		Product product1= new Product(1,"Inception",2);
		boolean output = product1.checkAvailability(3);
		assertEquals(false, output);
	}

}
