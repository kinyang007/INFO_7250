package Part6;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;
import java.util.*;

public class TopTenMapper extends Mapper<IntWritable, Text, Text, IntWritable> {

    private TreeMap<IntWritable, Text> repToRecordMap = new TreeMap<>((o1, o2) -> (o2.get() - o1.get()));

    public void map(IntWritable key, Text value, Context context) {
        repToRecordMap.put(key, value);
        if (repToRecordMap.size() > 10) {
            repToRecordMap.remove(repToRecordMap.lastKey());
        }
    }

    public void cleanup(Context context) throws IOException, InterruptedException {
        for (Map.Entry<IntWritable, Text> entry : repToRecordMap.entrySet()) {
            context.write(entry.getValue(), entry.getKey());
        }
    }
}
