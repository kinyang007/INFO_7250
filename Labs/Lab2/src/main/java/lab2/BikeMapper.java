package lab2;

import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.IntWritable;

import java.io.IOException;

public class BikeMapper extends Mapper<LongWritable, Text, CompositeKeyWritable, IntWritable> {

    private IntWritable one = new IntWritable(1);

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String line = value.toString();
        String[] tokens = line.split(",");
        String bikeId = tokens[8].equals("") ? "Unknown Bike" : tokens[8];
        String zip = tokens.length < 11 ? "N/A" : tokens[10];

        CompositeKeyWritable obj = new CompositeKeyWritable(bikeId, zip);
        context.write(obj, one);
    }
}
