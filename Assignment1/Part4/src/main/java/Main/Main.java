package Main;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;

public class Main {
    public static void main(String args[]) {
        try {

            MongoClientURI uri = new MongoClientURI("mongodb+srv://ProjectUser:abcd1234@cluster0-vyuoj.mongodb.net/test?retryWrites=true&w=majority");
            MongoClient mongoClient = new MongoClient(uri);
            MongoDatabase database = mongoClient.getDatabase("INFO7250");

            System.out.println("Connect to database successfully");



        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
        }
    }


}