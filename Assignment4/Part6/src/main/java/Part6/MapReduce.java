package Part6;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.lib.chain.ChainMapper;
import org.apache.hadoop.mapreduce.lib.chain.ChainReducer;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.map.InverseMapper;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;

import java.io.IOException;

public class MapReduce {
    public static void main(String[] args) throws IOException, InterruptedException, ClassNotFoundException {
        Configuration conf = new Configuration();
        Job job = Job.getInstance(conf, "Assignment4 Part6");
        job.setJarByClass(MapReduce.class);

        Configuration mapConf1 = new Configuration(false);
        ChainMapper.addMapper(job, IPMapper.class, LongWritable.class, Text.class, Text.class, IntWritable.class, mapConf1);

        Configuration reduceConf1 = new Configuration(false);
        ChainReducer.setReducer(job, IPCountReducer.class, Text.class, IntWritable.class, Text.class, IntWritable.class, reduceConf1);

        Configuration mapConf2 = new Configuration(false);
        ChainReducer.addMapper(job, InverseMapper.class, Text.class, IntWritable.class, IntWritable.class, Text.class, mapConf2);

        Configuration mapConf3 = new Configuration(false);
        ChainReducer.addMapper(job, TopTenMapper.class, IntWritable.class, Text.class, Text.class, IntWritable.class, mapConf3);

        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(IntWritable.class);

        job.setInputFormatClass(TextInputFormat.class);
        job.setOutputFormatClass(TextOutputFormat.class);

        FileInputFormat.addInputPath(job, new Path(args[0]));
        FileOutputFormat.setOutputPath(job, new Path(args[1]));

        FileSystem fs = FileSystem.get(conf);
        fs.delete(new Path(args[1]), true);

        System.exit(job.waitForCompletion(true) ? 0 : 1);
    }
}
