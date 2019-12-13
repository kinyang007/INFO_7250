package Business.NumbersInEachCityAndState;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.*;
import org.apache.hadoop.hbase.mapreduce.TableMapReduceUtil;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;

import java.util.*;

public class MapReduce {
    public static void main(String[] args) throws Exception {
        Configuration conf = HBaseConfiguration.create();
        Job job = Job.getInstance(conf, "Numbers In Each City And State");
        job.setJarByClass(Review.PercentageOfRatings.MapReduce.class);

        Scan scan = new Scan();
        scan.setCaching(500);
        scan.setCacheBlocks(false);

        Connection connection = ConnectionFactory.createConnection(conf);
        Admin admin = connection.getAdmin();
        if (!admin.isTableAvailable(TableName.valueOf("numbers_in_each_city_and_state"))) {
            TableDescriptorBuilder tdb = TableDescriptorBuilder.newBuilder(TableName.valueOf("numbers_in_each_city_and_state"));
            List<ColumnFamilyDescriptor> cfd = new ArrayList<>();
            cfd.add(ColumnFamilyDescriptorBuilder.newBuilder(Bytes.toBytes("position")).build());
            cfd.add(ColumnFamilyDescriptorBuilder.newBuilder(Bytes.toBytes("results")).build());
            tdb.setColumnFamilies(cfd);
            admin.createTable(tdb.build());
        }
        connection.close();

        TableMapReduceUtil.initTableMapperJob("business", scan, StateCityMapper.class, Text.class, IntWritable.class, job);
        TableMapReduceUtil.initTableReducerJob("numbers_in_each_city_and_state", StateCityReducer.class, job);

        long startTime = System.currentTimeMillis();
        boolean result = job.waitForCompletion(true);
        long endTime = System.currentTimeMillis();
        System.out.println("HBase Numbers In Each City And State MapReduce Time: " + (endTime - startTime) + " ms");

        System.exit(result ? 0 : 1);
    }
}
