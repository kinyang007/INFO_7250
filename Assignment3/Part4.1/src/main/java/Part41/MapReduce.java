package Part41;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;

public class MapReduce {
    public static void main(String[] args) {
        Configuration conf = new Configuration();
        try {
            Job job = Job.getInstance(conf, "Find Max Price");
            job.setJarByClass(MapReduce.class);

            job.setMapperClass(PriceMapper.class);
            job.setReducerClass(PriceMaxReducer.class);

            job.setInputFormatClass(TextInputFormat.class);
            job.setOutputFormatClass(TextOutputFormat.class);

            job.setOutputKeyClass(Text.class);
            job.setOutputValueClass(DoubleWritable.class);

            FileInputFormat.setInputPaths(job, new Path(args[0]));
            FileOutputFormat.setOutputPath(job, new Path(args[1]));

            long startTime = System.currentTimeMillis();
            boolean result = job.waitForCompletion(true);
            long endTime = System.currentTimeMillis();
            System.out.println("MapReduce Time: " + (endTime - startTime) + " ms");

            if (result) {
                System.exit(0);
            } else {
                System.exit(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
