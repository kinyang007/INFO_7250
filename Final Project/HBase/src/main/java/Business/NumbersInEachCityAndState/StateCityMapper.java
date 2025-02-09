package Business.NumbersInEachCityAndState;

import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableMapper;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;

import java.io.IOException;

public class StateCityMapper extends TableMapper<Text, IntWritable> {

    private static final byte[] POSITION = "position".getBytes();
    private static final byte[] STATE = "state".getBytes();
    private static final byte[] CITY = "city".getBytes();

    private Text key = new Text();
    private IntWritable one = new IntWritable(1);

    public void map(ImmutableBytesWritable row, Result value, Context context) throws IOException, InterruptedException {
        byte[] tmp1 = value.getValue(POSITION, STATE);
        byte[] tmp2 = value.getValue(POSITION, CITY);

        String state = new String(tmp1);
        String city = new String(tmp2);
        key.set(state + "\t" + city);
        context.write(key, one);
    }

}
