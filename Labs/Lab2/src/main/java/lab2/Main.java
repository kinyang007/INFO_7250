package lab2;

import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File("/Users/kinyang/Desktop/secondarysorting_lab.csv");
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
        String line = "";
        while ((line = bufferedReader.readLine()) != null) {
            String[] tokens = line.split(",");
            String bikeId = tokens[8].equals("") ? "Unknown Bike" : tokens[8];
            String zip = tokens.length < 11 ? "N/A" : tokens[10];
            System.out.println("BikeId: " + bikeId + "\t" + "Zip: " + zip);
//            System.out.print("Len: " + tokens.length + "\t");
//            for (int i = 0; i < tokens.length; i++) {
//                System.out.print(i + ": " + tokens[i] + "\t");
//            }
//            System.out.println();
        }
    }
}
