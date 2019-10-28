package lab2;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Reducer;


import java.io.IOException;

public class BikeCountReducer extends Reducer<CompositeKeyWritable, IntWritable, Text, IntWritable> {

    private IntWritable result = new IntWritable();
    private Text k = new Text();

    public void reduce(CompositeKeyWritable key, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException {
        int sum = 0;
        for (IntWritable value : values) {
            sum += value.get();
        }
        k.set(key.toString());
        result.set(sum);
        context.write(k, result);
    }
}
