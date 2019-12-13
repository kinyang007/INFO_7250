package Review.PercentageOfRatings;

import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableReducer;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.IntWritable;

import java.io.IOException;
import java.util.*;

public class RateReducer extends TableReducer<DoubleWritable, IntWritable, ImmutableBytesWritable> {

    private static final byte[] RESULTS = "results".getBytes();
    private static final byte[] PERCENTAGE = "percentage".getBytes();

    private HashMap<Double, Integer> ratings;
    private int total;

    public void setup(Context context) {
        ratings = new HashMap<>();
        total = 0;
    }

    public void reduce(DoubleWritable key, Iterable<IntWritable> values, Context context) {
        double rate = key.get();
        int sum = ratings.getOrDefault(rate, 0);
        for (IntWritable value : values) {
            sum += value.get();
            total += value.get();
        }
        ratings.put(rate, sum);
    }

    public void cleanup(Context context) throws IOException, InterruptedException {
        for (Map.Entry<Double, Integer> entry : ratings.entrySet()) {
            double rate = entry.getKey();
            double percentage = (double) entry.getValue() / total * 100.0;
            Put p = new Put(Bytes.toBytes(String.valueOf(rate)));
            p.addColumn(RESULTS, PERCENTAGE, Bytes.toBytes(String.valueOf(percentage)));
            context.write(null, p);
        }
    }

}
