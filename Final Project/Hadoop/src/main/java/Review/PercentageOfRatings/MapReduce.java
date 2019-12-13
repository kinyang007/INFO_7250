package Review.PercentageOfRatings;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.*;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;

import java.io.IOException;

public class MapReduce {
    public static void main(String[] args) throws IOException, InterruptedException, ClassNotFoundException {
        Configuration conf = new Configuration();
        Job job = Job.getInstance(conf, "Percentage of Ratings");

        job.setJarByClass(MapReduce.class);

        job.setInputFormatClass(TextInputFormat.class);
        job.setOutputFormatClass(TextOutputFormat.class);

        job.setMapperClass(RateMapper.class);
        job.setReducerClass(RateReducer.class);

        job.setMapOutputKeyClass(DoubleWritable.class);
        job.setMapOutputValueClass(IntWritable.class);

        job.setOutputKeyClass(DoubleWritable.class);
        job.setOutputValueClass(DoubleWritable.class);

        FileInputFormat.addInputPath(job, new Path(args[0]));
        FileOutputFormat.setOutputPath(job, new Path(args[1]));

        FileSystem fs = FileSystem.get(conf);
        fs.delete(new Path(args[1]), true);

        long startTime = System.currentTimeMillis();
        boolean result = job.waitForCompletion(true);
        long endTime = System.currentTimeMillis();
        System.out.println("Hadoop Percentage of Ratings MapReduce Time: " + (endTime - startTime) + " ms");

        System.exit(result ? 0 : 1);
    }
}
