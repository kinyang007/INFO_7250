package FixedLengthInputFormat;

import org.apache.hadoop.io.BytesWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class IPMapper extends Mapper<LongWritable, BytesWritable, Text, IntWritable> {

    private IntWritable one = new IntWritable(1);
    private Text ip = new Text();

    public void map(LongWritable key, BytesWritable value, Context context) throws IOException, InterruptedException {
        String line = new String(value.getBytes());
        ip.set(line);
        context.write(ip, one);
    }
}
