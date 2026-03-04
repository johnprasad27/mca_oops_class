class CPU {
    String brand = "Intel";

    void showBrand() {
        System.out.println("CPU Brand: " + brand);
    }
}

class Processor extends CPU {
    int generation = 12;

    void showGeneration() {
        System.out.println("Processor Generation: " + generation);
    }
}

class Core extends Processor {
    int cores = 8;

    void showCores() {
        System.out.println("Number of Cores: " + cores);
    }
}

public class Computer {
    public static void main(String[] args) {
        Core c = new Core();

        c.showBrand();       
        c.showGeneration();  
        c.showCores();       
    }
}