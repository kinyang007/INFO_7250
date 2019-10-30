package Part3;

import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.LongWritable;

import java.io.IOException;

public class StockMapper extends Mapper<LongWritable, Text, Text, CompositeValueWritable> {

    private Text key = new Text();

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String line = value.toString();
        String[] tokens = line.split(",");

        CompositeValueWritable cv = new CompositeValueWritable();
        if (!tokens[0].equals("exchange")) {
            cv.setDateOfMaxStockVolume(tokens[2]);
            cv.setDateOfMinStockVolume(tokens[2]);
            cv.setMaxStockPriceAdjClose(Double.parseDouble(tokens[8]));
            cv.setMinStockVolume(Integer.parseInt(tokens[7]));
            cv.setMaxStockVolume(Integer.parseInt(tokens[7]));
            this.key.set(tokens[1] + "\t");
            context.write(this.key, cv);
        }
    }
}
