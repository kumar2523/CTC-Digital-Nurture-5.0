import java.util.ArrayList;
import java.util.List;


public class StockMarket implements Stock {


    private List<Observer> observers = new ArrayList<>();


    public void register(Observer observer) {

        observers.add(observer);

    }


    public void deregister(Observer observer) {

        observers.remove(observer);

    }


    public void notifyObservers() {

        for (Observer observer : observers) {

            observer.update();

        }

    }


    public void changeStockPrice() {

        System.out.println("Stock price changed");

        notifyObservers();

    }

}