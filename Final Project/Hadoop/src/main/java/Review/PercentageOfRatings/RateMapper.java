package Review.PercentageOfRatings;

import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.json.JSONObject;

import java.io.IOException;

public class RateMapper extends Mapper<LongWritable, Text, DoubleWritable, IntWritable> {

    private IntWritable one = new IntWritable(1);
    private DoubleWritable rate = new DoubleWritable();

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String jsonStr = value.toString();
        JSONObject object = new JSONObject(jsonStr);
        double stars = object.getDouble("stars");
        rate.set(stars);
        context.write(rate, one);
    }

}
