package Part5;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class StockMapper extends Mapper<LongWritable, Text, IntWritable, CompositeValueWritable> {

    private IntWritable year = new IntWritable();

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String[] tokens = value.toString().split(",");
        if(!tokens[0].equals("exchange")) {
            String[] date = tokens[2].split("-");
            year.set(Integer.parseInt(date[0]));
            CompositeValueWritable cv = new CompositeValueWritable();
            cv.setAverage(Double.parseDouble(tokens[8]));
            cv.setCount(1);
            context.write(year, cv);
        }
    }
}
