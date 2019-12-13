package Business.NumbersInEachCityAndState;

import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableReducer;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;

import java.io.IOException;

public class StateCityReducer extends TableReducer<Text, IntWritable, ImmutableBytesWritable> {

    private static final byte[] POSITION = "position".getBytes();
    private static final byte[] STATE = "state".getBytes();
    private static final byte[] CITY = "city".getBytes();
    private static final byte[] RESULTS = "results".getBytes();
    private static final byte[] COUNT = "count".getBytes();
    private static int row = 0;

    public void reduce(Text key, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException {
        String[] tmp = key.toString().split(",");
        String state = tmp[0];
        String city = tmp[1];

        int sum = 0;
        for (IntWritable value : values) {
            sum += value.get();
        }

        Put p = new Put(Bytes.toBytes(++row));
        p.addColumn(POSITION, STATE, Bytes.toBytes(state));
        p.addColumn(POSITION, CITY, Bytes.toBytes(city));
        p.addColumn(RESULTS, COUNT, Bytes.toBytes(String.valueOf(sum)));

        context.write(null, p);
    }

}
