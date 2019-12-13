package Review.PercentageOfRatings;

import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableMapper;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.IntWritable;

import java.io.IOException;
import java.nio.ByteBuffer;

public class RateMapper extends TableMapper<DoubleWritable, IntWritable> {
    private static final byte[] info = "info".getBytes();
    private static final byte[] rate = "rate".getBytes();

    private DoubleWritable key = new DoubleWritable();
    private IntWritable one = new IntWritable(1);

    public void map(ImmutableBytesWritable row, Result value, Context context) throws IOException, InterruptedException {
        byte[] tmp = value.getValue(info, rate);
        double rating = ByteBuffer.wrap(tmp).getDouble();
        key.set(rating);
        context.write(key, one);
    }
}
