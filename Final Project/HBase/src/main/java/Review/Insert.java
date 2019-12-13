package Review;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.*;
import org.apache.hadoop.hbase.util.Bytes;
import org.json.JSONObject;

import java.io.*;
import java.util.*;

public class Insert {
    public static void main(String[] args) throws IOException {

        Configuration conf = HBaseConfiguration.create();
        Connection connection = ConnectionFactory.createConnection(conf);

        Admin admin = connection.getAdmin();
        TableName tableName = TableName.valueOf("review");
        if (!admin.isTableAvailable(tableName)) {
            TableDescriptorBuilder tdb = TableDescriptorBuilder.newBuilder(tableName);

            List<ColumnFamilyDescriptor> cfd = new ArrayList<>();
            cfd.add(ColumnFamilyDescriptorBuilder.newBuilder(Bytes.toBytes("info")).build());
            cfd.add(ColumnFamilyDescriptorBuilder.newBuilder(Bytes.toBytes("vote")).build());
            tdb.setColumnFamilies(cfd);

            admin.createTable(tdb.build());
        }


        Table table = connection.getTable(tableName);

        FileInputStream is = new FileInputStream("/Users/kinyang/yelp_dataset/review.json");
        BufferedReader bf = new BufferedReader(new InputStreamReader(is));
        String line;
        while ((line = bf.readLine()) != null) {
            JSONObject object = new JSONObject(line);
            Put p = new Put(Bytes.toBytes(object.getString("review_id")));
            p.addColumn(Bytes.toBytes("info"), Bytes.toBytes("user_id"), Bytes.toBytes(object.getString("user_id")));
            p.addColumn(Bytes.toBytes("info"), Bytes.toBytes("business_id"), Bytes.toBytes(object.getString("business_id")));
            p.addColumn(Bytes.toBytes("info"), Bytes.toBytes("rate"), Bytes.toBytes(object.getDouble("stars")));
            p.addColumn(Bytes.toBytes("info"), Bytes.toBytes("date"), Bytes.toBytes(object.getString("date")));
            p.addColumn(Bytes.toBytes("vote"), Bytes.toBytes("useful"), Bytes.toBytes(object.getInt("useful")));
            p.addColumn(Bytes.toBytes("vote"), Bytes.toBytes("funny"), Bytes.toBytes(object.getInt("funny")));
            p.addColumn(Bytes.toBytes("vote"), Bytes.toBytes("cool"), Bytes.toBytes(object.getInt("cool")));
            table.put(p);
        }
        bf.close();
        is.close();
        table.close();
        connection.close();

    }
}
