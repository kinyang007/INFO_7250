package lab3;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;
import java.util.*;

public class TopTenMapper extends Mapper<LongWritable, Text, Text, LongWritable> {

    private TreeMap<Long, String> tmap;

    @Override
    public void setup(Context context) {
        tmap = new TreeMap<>();
    }

    @Override
    public void map(LongWritable key, Text value, Context context) {
        String[] tokens = value.toString().split("\t");
        String streetName = tokens[0];
        Long numCrimes = Long.parseLong(tokens[1]);
        tmap.put(numCrimes, streetName);

        if (tmap.size() > 10) {
            tmap.remove(tmap.firstKey());
        }
    }

    @Override
    public void cleanup(Context context) throws IOException, InterruptedException {
        for (Map.Entry<Long, String> entry : tmap.entrySet()) {
            context.write(new Text(entry.getValue()), new LongWritable(entry.getKey()));
        }
    }

}
