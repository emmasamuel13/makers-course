package calculator;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CalculatorTest {
  @Test public void testAddsTwoAndTwo() {
    Calculator calc = new Calculator();
    assertEquals("2 + 2 should equal 4", Integer.valueOf(4), calc.add(2, 2));
  }

  @Test public void testAddsTwoAndThree() {
    Calculator calc = new Calculator();
    assertEquals("2 + 3 should equal 5", Integer.valueOf(5), calc.add(2, 3));
  }
}
