package Part3;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class StockReducer extends Reducer<Text, CompositeValueWritable, Text, CompositeValueWritable> {

    public void reduce(Text key, Iterable<CompositeValueWritable> values, Context context) throws IOException, InterruptedException {
        CompositeValueWritable cv = new CompositeValueWritable();
        cv.setMaxStockVolume(Integer.MIN_VALUE);
        cv.setMinStockVolume(Integer.MAX_VALUE);
        cv.setMaxStockPriceAdjClose(Double.MIN_VALUE);

        for (CompositeValueWritable value : values) {
            if (value.getMinStockVolume() < cv.getMinStockVolume()) {
                cv.setMinStockVolume(value.getMinStockVolume());
                cv.setDateOfMinStockVolume(value.getDateOfMinStockVolume());
            }
            if (value.getMaxStockVolume() > cv.getMaxStockVolume()) {
                cv.setMaxStockVolume(value.getMaxStockVolume());
                cv.setDateOfMaxStockVolume(value.getDateOfMaxStockVolume());
            }
            if (value.getMaxStockPriceAdjClose() > cv.getMaxStockPriceAdjClose()) {
                cv.setMaxStockPriceAdjClose(value.getMaxStockPriceAdjClose());
            }
        }
        context.write(key, cv);
    }

}
