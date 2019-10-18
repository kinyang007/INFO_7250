package TextInputFormat;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class IPMapper extends Mapper<LongWritable, Text, Text, IntWritable> {

    private IntWritable one = new IntWritable(1);
    private Text ip = new Text();

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String line = value.toString();
        String[] data = line.split(" ");
        ip.set(data[0]);
        context.write(ip, one);
    }
}
