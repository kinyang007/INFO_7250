package lab3;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;
import java.util.*;

public class TopTenReducer extends Reducer<Text, LongWritable, Text, LongWritable> {

    private TreeMap<Long, String> tmap2;

    @Override
    public void setup(Context context) {
        tmap2 = new TreeMap<>();
    }

    @Override
    public void reduce(Text key, Iterable<LongWritable> values, Context context) {
        String street = key.toString();
        long count = 0;
        for (LongWritable val : values) {
            count = val.get();
        }
        tmap2.put(count, street);

        if (tmap2.size() > 10) {
            tmap2.remove(tmap2.firstKey());
        }
    }

    @Override
    public void cleanup(Context context) throws IOException, InterruptedException {
        for (Map.Entry<Long, String> entry : tmap2.entrySet()) {
            context.write(new Text(entry.getValue()), new LongWritable(entry.getKey()));
        }
    }

}
