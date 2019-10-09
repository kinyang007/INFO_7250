package Main;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        try {
            MongoClient mongoClient = new MongoClient("localhost", 27017);
            MongoDatabase database = mongoClient.getDatabase("INFO7250");

            MongoCollection<Document> collection = createCollection(database, "movies_1m");
            readFilesAndImport(collection, "movies.dat");

            collection = createCollection(database, "ratings_1m");
            readFilesAndImport(collection, "ratings.dat");

            collection = createCollection(database, "users_1m");
            readFilesAndImport(collection, "users.dat");
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
        }
    }

    public static MongoCollection<Document> createCollection(MongoDatabase database, String collectionName) {
        MongoCollection<Document> collection;
        boolean collectionExists = database.listCollectionNames().into(new ArrayList<String>()).contains(collectionName);
        if (collectionExists) {
            collection = database.getCollection(collectionName);
            collection.drop();
        }
        database.createCollection(collectionName);
        collection = database.getCollection(collectionName);
        return collection;
    }

    public static void readFilesAndImport(MongoCollection<Document> collection, String filename) {
        try {
            String path = System.getProperty("user.dir") + "/Part6/ml-1m/" + filename;
            FileInputStream inputStream = new FileInputStream(path);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                String data[] = line.split("::");
                Document doc = new Document();
                if (filename.equals("movies.dat")) {
                    doc.put("MovieID", Integer.parseInt(data[0]));
                    doc.put("Title", data[1]);
                    List<String> genres = Arrays.asList(data[2].split("\\|"));
                    if (genres.get(0).equals("(no genres listed)")) {
                        doc.put("Genres", new ArrayList<String>());
                    } else {
                        doc.put("Genres", genres);
                    }
                } else if (filename.equals("ratings.dat")) {
                    doc.put("UserID", Integer.parseInt(data[0]));
                    doc.put("MovieID", Integer.parseInt(data[1]));
                    doc.put("Rating", Double.parseDouble(data[2]));
                    doc.put("Timestamp", Long.parseLong(data[3]));
                } else if (filename.equals("users.dat")) {
                    doc.put("UserID", Integer.parseInt(data[0]));
                    doc.put("Gender", data[1]);
                    doc.put("Age", Integer.parseInt(data[2]));
                    doc.put("Occupation", Integer.parseInt(data[3]));
                    doc.put("Zipcode", data[4]);
                }
                collection.insertOne(doc);
            }
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
        }
    }

}
