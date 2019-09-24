package Main;


import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

import java.io.*;
import java.util.*;

public class Main {
    public static void main(String args[]) {
        try {
//            MongoClientURI uri = new MongoClientURI("mongodb+srv://ProjectUser:abcd1234@cluster0-vyuoj.mongodb.net/test?retryWrites=true&w=majority");
//            MongoClient mongoClient = new MongoClient(uri);
            MongoClient mongoClient = new MongoClient("localhost", 27017);
            MongoDatabase database = mongoClient.getDatabase("INFO7250");

            MongoCollection<Document> collection;
            boolean collectionExists = database.listCollectionNames().into(new ArrayList<String>()).contains("access");
            if (collectionExists) {
                collection = database.getCollection("access");
                collection.drop();
            }
            database.createCollection("access");
            collection = database.getCollection("access");

            String path = System.getProperty("user.dir") + "/Part5/access.log";
            FileInputStream inputStream = new FileInputStream(path);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            String line;
            while (((line = bufferedReader.readLine()) != null)) {
                String[] data = line.split(" ");
                String ip = data[0];
                String[] timeData = data[3].split("/|:");
                String month = timeData[1];
                String year = timeData[2];

                Document doc = new Document();
                doc.put("ip", ip);
                doc.put("year", year);
                doc.put("month", month);
                doc.put("log", line);
                collection.insertOne(doc);
            }
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
        }
    }
}