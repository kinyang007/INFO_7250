package SequenceFileInputFormat;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class IPMapper extends Mapper<Text, IntWritable, Text, IntWritable> {

    public void map(Text key, IntWritable value, Context context) throws IOException, InterruptedException {
        context.write(key, value);
    }

}
