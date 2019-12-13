package Business;

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
        TableName tableName = TableName.valueOf("business");
        if (!admin.isTableAvailable(tableName)) {
            TableDescriptorBuilder tdb = TableDescriptorBuilder.newBuilder(tableName);

            List<ColumnFamilyDescriptor> cfd = new ArrayList<>();
            cfd.add(ColumnFamilyDescriptorBuilder.newBuilder(Bytes.toBytes("info")).build());
            cfd.add(ColumnFamilyDescriptorBuilder.newBuilder(Bytes.toBytes("position")).build());
            tdb.setColumnFamilies(cfd);

            admin.createTable(tdb.build());
        }


        Table table = connection.getTable(tableName);

        FileInputStream is = new FileInputStream("/Users/kinyang/yelp_dataset/business.json");
        BufferedReader bf = new BufferedReader(new InputStreamReader(is));
        String line;
        while ((line = bf.readLine()) != null) {
            JSONObject object = new JSONObject(line);
            Put p = new Put(Bytes.toBytes(object.getString("business_id")));
            p.addColumn(Bytes.toBytes("info"), Bytes.toBytes("name"), Bytes.toBytes(object.getString("name")));
            p.addColumn(Bytes.toBytes("info"), Bytes.toBytes("stars"), Bytes.toBytes(object.getDouble("stars")));
            p.addColumn(Bytes.toBytes("info"), Bytes.toBytes("review_count"), Bytes.toBytes(object.getInt("review_count")));
            p.addColumn(Bytes.toBytes("info"), Bytes.toBytes("is_open"), Bytes.toBytes(object.getInt("is_open")));
            p.addColumn(Bytes.toBytes("position"), Bytes.toBytes("address"), Bytes.toBytes(object.getString("address")));
            p.addColumn(Bytes.toBytes("position"), Bytes.toBytes("city"), Bytes.toBytes(object.getString("city")));
            p.addColumn(Bytes.toBytes("position"), Bytes.toBytes("state"), Bytes.toBytes(object.getString("state")));
            p.addColumn(Bytes.toBytes("position"), Bytes.toBytes("postal_code"), Bytes.toBytes(object.getString("postal_code")));
            p.addColumn(Bytes.toBytes("position"), Bytes.toBytes("latitude"), Bytes.toBytes(object.getDouble("latitude")));
            p.addColumn(Bytes.toBytes("position"), Bytes.toBytes("longitude"), Bytes.toBytes(object.getDouble("longitude")));
            table.put(p);
        }
        bf.close();
        is.close();
        table.close();
        connection.close();

    }
}
