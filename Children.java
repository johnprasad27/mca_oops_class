class Parent {
    void showMessage() {
        System.out.println("This is the parent class method.");
    }
}

class Children extends Parent {
    void showMessage() {
        System.out.println("This is the child class method.");
    }

    public static void main(String[] args) {
        Parent p = new Parent();
        p.showMessage();

        Children c = new Children();
        c.showMessage();

        Parent pc = new Children();
        pc.showMessage();
    }
}