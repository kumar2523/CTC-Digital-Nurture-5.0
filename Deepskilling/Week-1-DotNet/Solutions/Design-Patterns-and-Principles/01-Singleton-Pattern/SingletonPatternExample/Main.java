public class Main {

    public static void main(String[] args) {

        Logger logger1 = Logger.getInstance();
        Logger logger2 = Logger.getInstance();

        logger1.log("First logger instance");
        logger2.log("Second logger instance");

        if (logger1 == logger2) {
            System.out.println("Both are same Logger instance");
        } else {
            System.out.println("Different instances");
        }
    }
}