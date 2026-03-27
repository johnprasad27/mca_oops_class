import java.io.*;

class FileHandling {
    public static void main(String[] args) {
        try {
            FileWriter fw = new FileWriter("source.txt");
            fw.write("Hello World\n");
            fw.write("This is Java\n");
            fw.write("File Handling Example\n");
            fw.close();

            BufferedReader br = new BufferedReader(new FileReader("source.txt"));

            BufferedWriter bw = new BufferedWriter(new FileWriter("destination.txt"));

            String line;

            while ((line = br.readLine()) != null) {
                bw.write(line);
                bw.newLine(); 
            }

            br.close();
            bw.close();

            System.out.println("File copied successfully!");

        } catch (IOException e) {
            System.out.println("Error occurred: " + e.getMessage());
        }
    }
}