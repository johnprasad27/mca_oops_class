interface Animal {
 void sound();  
}
class Dog implements Animal {
  public void sound() {
       System.out.println("Dog barks");
      }
}

class Cat implements Animal {
    public void sound() {
    System.out.println("Cat meows");
    }
}

public class Interface{
        public static void main(String[] args) {
        Dog d = new Dog();
        d.sound();
        Cat c = new Cat();
        c.sound();
    }
}