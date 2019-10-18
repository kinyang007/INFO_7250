package CombineFileInputFormat;

import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class PriceMaxReducer extends Reducer<Text, DoubleWritable, Text, DoubleWritable> {

    private DoubleWritable result = new DoubleWritable();

    public void reduce(Text key, Iterable<DoubleWritable> values, Context context) throws IOException, InterruptedException {
        double ans = 0;
        for (DoubleWritable value : values) {
            ans = Math.max(ans, value.get());
        }
        result.set(ans);
        context.write(key, result);
    }
}
