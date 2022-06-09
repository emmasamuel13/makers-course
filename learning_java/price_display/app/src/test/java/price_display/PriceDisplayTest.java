package price_display;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class PriceDisplayTest {
    @Test public void getPriceLabel() {
        PriceDisplay price = new PriceDisplay();
        assertEquals("The coffee machine costs 100.0", String.valueOf("The price for item: Coffee Machine is 100.0\n"), price.getPriceLabel("Coffee Machine", 100.00));
    }
}
