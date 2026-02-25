import java.util.Scanner;

public class LowestPrice {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        double min = Double.MAX_VALUE;
        for(int i = 0; i < n; i++) {
            double price = sc.nextDouble();
            if(price < min) {
                min = price;
            }
        }
        System.out.println(min);
    }
}