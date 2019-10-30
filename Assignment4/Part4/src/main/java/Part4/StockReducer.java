package Part4;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class StockReducer extends Reducer<Text, CompositeValueWritable, Text, Text> {

    private Text result = new Text();

    public void reduce(Text key, Iterable<CompositeValueWritable> values, Context context) throws IOException, InterruptedException {
        int maxVolume = Integer.MIN_VALUE;
        int minVolume = Integer.MAX_VALUE;
        double maxPriceAvgClose = Double.MIN_VALUE;

        for (CompositeValueWritable value : values) {
            String[] tokens = value.getResult().split(",");
            maxVolume = Math.max(maxVolume, Integer.parseInt(tokens[0]));
            minVolume = Math.min(minVolume, Integer.parseInt(tokens[1]));
            maxPriceAvgClose = Math.max(maxPriceAvgClose, Double.parseDouble(tokens[2]));
        }
        result.set(maxVolume + "," + minVolume + "," + maxPriceAvgClose);
        context.write(key, result);
    }

}
