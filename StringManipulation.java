import java.util.Scanner;

public class StringManipulation {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.nextLine();
        System.out.println(str.length());
        System.out.println(str.toUpperCase());
        System.out.println(str.toLowerCase());
        System.out.println(str.replace("a", "@"));
        System.out.println(new StringBuilder(str).reverse());
    }
}