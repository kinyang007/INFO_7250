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
            MongoClientURI uri = new MongoClientURI("mongodb+srv://ProjectUser:abcd1234@cluster0-vyuoj.mongodb.net/test?retryWrites=true&w=majority");
            MongoClient mongoClient = new MongoClient(uri);
            MongoDatabase database = mongoClient.getDatabase("INFO7250");

            MongoCollection<Document> collection = createCollection(database, "movies");
            readFilesAndImport(collection, "movies.dat");

            collection = createCollection(database, "ratings");
            readFilesAndImport(collection, "ratings.dat");

            collection = createCollection(database, "tags");
            readFilesAndImport(collection, "tags.dat");
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
        }
    }

    public static MongoCollection<Document> createCollection(MongoDatabase database, String collectionName) {
        MongoCollection<Document> collection;
        boolean collectionExists = database.listCollectionNames().into(new ArrayList<String>()).contains(collectionName);
        if (collectionExists) {
            collection = database.getCollection(collectionName);
            database.drop();
        }
        database.createCollection(collectionName);
        collection = database.getCollection(collectionName);
        return collection;
    }

    public static void readFilesAndImport(MongoCollection<Document> collection, String filename) {
        try {
            String path = System.getProperty("user.dir") + "/Part4/ml-10M100K/" + filename;
            FileInputStream inputStream = new FileInputStream(path);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            String line;
            while (((line = bufferedReader.readLine()) != null)) {
                String[] data = line.split("::");
                Document doc = new Document();
                if (filename.equals("movies.dat")) {
                    doc.put("MovieID", Integer.parseInt(data[0]));
                    doc.put("Title", data[1]);
                    doc.put("Genres", Arrays.asList(data[2].split("\\|")));
                } else if (filename.equals("ratings.dat")) {
                    doc.put("UserID", Integer.parseInt(data[0]));
                    doc.put("MovieID", Integer.parseInt(data[1]));
                    doc.put("Rating", Double.parseDouble(data[2]));
                    doc.put("Timestamp", Long.parseLong(data[3]));
                } else if (filename.equals("tags.dat")) {
                    doc.put("UserID", Integer.parseInt(data[0]));
                    doc.put("MovieID", Integer.parseInt(data[1]));
                    doc.put("Tag", data[2]);
                    doc.put("Timestamp", Long.parseLong(data[3]));
                }
                collection.insertOne(doc);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
    }
}