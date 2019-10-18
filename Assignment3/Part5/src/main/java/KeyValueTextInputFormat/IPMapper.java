package KeyValueTextInputFormat;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class IPMapper extends Mapper<Text, Text, Text, IntWritable> {
    private Text ip = new Text();
    private IntWritable count = new IntWritable();

    public void map(Text key, Text value, Context context) throws IOException, InterruptedException {
        ip.set(key);
        count.set(Integer.parseInt(value.toString()));
        context.write(ip, count);
    }
}
