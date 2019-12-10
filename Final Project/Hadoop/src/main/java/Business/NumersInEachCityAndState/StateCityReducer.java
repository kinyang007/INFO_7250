package Business.NumersInEachCityAndState;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.*;

public class StateCityReducer extends Reducer<StateCityKeyWritable, IntWritable, StateCityKeyWritable, IntWritable> {

    private IntWritable result = new IntWritable();

    public void reduce(StateCityKeyWritable key, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException {
        int sum = 0;
        for (IntWritable value : values) {
            sum += value.get();
        }
        result.set(sum);
        context.write(key, result);
    }
}
