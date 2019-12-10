package Business.Top5RatedBusinessInEachState;

import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class StateTop5Reducer extends Reducer<Text, BusinessWritable, BusinessWritable, NullWritable> {
    @Override
    public void reduce(Text key, Iterable<BusinessWritable> values, Context context) throws IOException, InterruptedException {
        for (BusinessWritable value : values) {
            context.write(value, NullWritable.get());
        }
    }
}
