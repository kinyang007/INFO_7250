package Review.PercentageOfRatings;

import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;
import java.util.*;

public class RateReducer extends Reducer<DoubleWritable, IntWritable, DoubleWritable, DoubleWritable> {

    private HashMap<Double, Integer> ratings;
    private int total;

    @Override
    public void setup(Context context) {
        ratings = new HashMap<>();
        total = 0;
    }

    @Override
    public void reduce(DoubleWritable key, Iterable<IntWritable> values, Context context) {
        double rate = key.get();
        int sum = ratings.getOrDefault(rate, 0);
        for (IntWritable value : values) {
            sum += value.get();
            total += value.get();
        }
        ratings.put(rate, sum);
    }

    @Override
    public void cleanup(Context context) throws IOException, InterruptedException {
        for (Map.Entry<Double, Integer> entry : ratings.entrySet()) {
            double percentage = (double) entry.getValue() / total * 100.0;
            context.write(new DoubleWritable(entry.getKey()), new DoubleWritable(percentage));
        }
    }

}
