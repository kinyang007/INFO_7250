package Part4;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class StockMapper extends Mapper<LongWritable, Text, Text, CompositeValueWritable> {

    private Text key = new Text();

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String line = value.toString();
        String[] tokens = line.split(",");

        CompositeValueWritable cv = new CompositeValueWritable();
        if (!tokens[0].equals("exchange")) {
            cv.setStockVolume(Integer.parseInt(tokens[7]));
            cv.setStockPriceAdjClose(Double.parseDouble(tokens[8]));
            cv.setResult(tokens[7] + "," + tokens[7] + "," + tokens[8]);
            this.key.set(tokens[1] + "\t");
            context.write(this.key, cv);
        }
    }
}
