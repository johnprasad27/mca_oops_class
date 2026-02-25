import java.util.Scanner;

public class ComplexAddition {
    double real, imag;

    ComplexAddition(double r, double i) {
        real = r;
        imag = i;
    }

    ComplexAddition add(ComplexAddition c) {
        return new ComplexAddition(real + c.real, imag + c.imag);
    }

    void display() {
        System.out.println(real + " + " + imag + "i");
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ComplexAddition c1 = new ComplexAddition(sc.nextDouble(), sc.nextDouble());
        ComplexAddition c2 = new ComplexAddition(sc.nextDouble(), sc.nextDouble());
        ComplexAddition result = c1.add(c2);
        result.display();
    }
}