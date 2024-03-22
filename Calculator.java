public class Calculator {
    public int add(int a, int b) {
        int result = a + b;
        System.out.println("Result of addition: " + result);
        return result;
    }

    public int subtract(int a, int b) {
        int result = a - b;
        System.out.println("Result of subtraction: " + result);
        return result;
    }

    public int multiply(int a, int b) {
        int result = a * b;
        System.out.println("Result of multiplication: " + result);
        return result;
    }

    public int divide(int a, int b) {
        if (b == 0) {
            System.err.println("Error: Cannot divide by zero");
            return 0;
        }
        int result = a / b;
        System.out.println("Result of division: " + result);
        return result;
    }
}

