package Part5;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class StockReducer extends Reducer<IntWritable, CompositeValueWritable, IntWritable, CompositeValueWritable> {

    public void reduce(IntWritable key, Iterable<CompositeValueWritable> values, Context context) throws IOException, InterruptedException {
        int count = 0;
        double sum = 0.0;
        for (CompositeValueWritable value : values) {
            count += value.getCount();
            sum += value.getAverage() * value.getCount();
        }
        CompositeValueWritable cv = new CompositeValueWritable();
        cv.setCount(count);
        cv.setAverage(sum / count);
        context.write(key, cv);
    }
}