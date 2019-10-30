package Part4;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class StockCombiner extends Reducer<Text, CompositeValueWritable, Text, CompositeValueWritable> {
    public void reduce(Text key, Iterable<CompositeValueWritable> values, Context context) throws IOException, InterruptedException {
        int maxVolume = Integer.MIN_VALUE;
        int minVolume = Integer.MAX_VALUE;
        double maxPriceAvgClose = Double.MIN_VALUE;
        for (CompositeValueWritable value : values) {
            maxVolume = Math.max(maxVolume, value.getStockVolume());
            minVolume = Math.min(minVolume, value.getStockVolume());
            maxPriceAvgClose = Math.max(maxPriceAvgClose, value.getStockPriceAdjClose());
        }
        String result = maxVolume + "," + minVolume + "," + maxPriceAvgClose;
        CompositeValueWritable cv = new CompositeValueWritable();
        cv.setResult(result);
        context.write(key, cv);
    }
}
