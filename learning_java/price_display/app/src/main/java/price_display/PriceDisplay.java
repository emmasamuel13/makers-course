package price_display;

public class PriceDisplay {

    public static String getPriceLabel(String item, Double price) {
        String label = String.format("The price for item: %s is %s\n", item, price);
        return label;
    }
}
