public class Main {

    public static void main(String[] args) {


        StockMarket stockMarket = new StockMarket();


        MobileApp mobile = new MobileApp();
        WebApp web = new WebApp();


        stockMarket.register(mobile);
        stockMarket.register(web);


        stockMarket.changeStockPrice();

    }
}