package Part41;

import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class PriceMapper extends Mapper<LongWritable, Text, Text, DoubleWritable> {

    private Text stockSymbol = new Text();
    private DoubleWritable price = new DoubleWritable();

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String line = value.toString();
        String[] data = line.split(",");
        if (!data[4].equals("stock_price_high")) {
            stockSymbol.set(data[1]);
            price.set(Double.parseDouble(data[4]));
            context.write(stockSymbol, price);
        }
    }

}
