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

            MongoCollection<Document> collection = checkOrCreateCollection(database, "movies");
            List<Document> documents = readFiles("movies.dat");
            ImportDocuments(collection, documents);

            collection = checkOrCreateCollection(database, "ratings");
            documents = readFiles("ratings.dat");
            ImportDocuments(collection, documents);

            collection = checkOrCreateCollection(database, "tags");
            documents = readFiles("tags.dat");
            ImportDocuments(collection, documents);
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
        }
    }

    public static MongoCollection<Document> checkOrCreateCollection(MongoDatabase database, String collectionName) {
        boolean collectionExists = database.listCollectionNames().into(new ArrayList<String>()).contains(collectionName);
        if (!collectionExists) {
            database.createCollection(collectionName);
        }
        return database.getCollection(collectionName);
    }

    public static void ImportDocuments(MongoCollection<Document> collection, List<Document> data) {
        if (collection.count() != 0) {
            collection.deleteMany(new Document());
        }
//        for (Document d : data) {
//            collection.insertOne(d);
//        }
        collection.insertMany(data);
        System.out.println("Import Finish!");
    }

    public static List<Document> readFiles(String filename) {
        List<Document> documents = new ArrayList<Document>();
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
                documents.add(doc);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return documents;
    }
}