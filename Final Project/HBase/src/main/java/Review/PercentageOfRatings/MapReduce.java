package Review.PercentageOfRatings;


import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.*;
import org.apache.hadoop.hbase.mapreduce.TableMapReduceUtil;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Job;

public class MapReduce {
    public static void main(String[] args) throws Exception {
        Configuration conf = HBaseConfiguration.create();
        Job job = Job.getInstance(conf, "Percentage of Ratings");
        job.setJarByClass(MapReduce.class);

        Scan scan = new Scan();
        scan.setCaching(500);
        scan.setCacheBlocks(false);

        Connection connection = ConnectionFactory.createConnection(conf);
        Admin admin = connection.getAdmin();
        if (!admin.isTableAvailable(TableName.valueOf("percentage_of_ratings"))) {
            TableDescriptorBuilder tdb = TableDescriptorBuilder.newBuilder(TableName.valueOf("percentage_of_ratings"));
            tdb.setColumnFamily(ColumnFamilyDescriptorBuilder.newBuilder(Bytes.toBytes("results")).build());
            admin.createTable(tdb.build());
        }
        connection.close();

        TableMapReduceUtil.initTableMapperJob("review", scan, RateMapper.class, DoubleWritable.class, IntWritable.class, job);
        TableMapReduceUtil.initTableReducerJob("percentage_of_ratings", RateReducer.class, job);

        long startTime = System.currentTimeMillis();
        boolean result = job.waitForCompletion(true);
        long endTime = System.currentTimeMillis();
        System.out.println("HBase Percentage of Ratings MapReduce Time: " + (endTime - startTime) + " ms");

        System.exit(result ? 0 : 1);
    }
}
