package lab1;

import org.apache.hadoop.fs.*;
import org.apache.hadoop.io.*;
import org.apache.hadoop.conf.*;
import org.apache.hadoop.mapreduce.*;
import org.apache.hadoop.mapreduce.lib.input.*;
import org.apache.hadoop.mapreduce.lib.output.*;

/*
Step 1: Open the file to see the structure or format
Step 2: Create a Mapper Class
Step 3: Create a Reducer Class
Step 4: Decide the output format of the MapReduce job
Step 5: Create a Main or Driver class
Step 6: Create a job in the main class and set the attributes of the job
Step 7: Build the project to create a jar file and run it as follows
        hadoop jar <jar> [mainClass] /path/to/input - arg[0] /path/to/output - arg[1]
Example: hadoop jar GitHub/INFO_7250/Lab1/target/Lab1-1.0-SNAPSHOT.jar lab1.Main /ebooks /wordcount1
 */

public class Main {
    public static void main(String[] args) {
        Configuration conf = new Configuration();
        try {
            Job job = Job.getInstance(conf, "Word Count Example");
            job.setJarByClass(Main.class);

            // Set Mappers and Reducer classes
            job.setMapperClass(WordMapper.class);
            job.setReducerClass(WordCountReducer.class);

            // Set InputFormat and OutputFormat classes
            job.setInputFormatClass(TextInputFormat.class);
            job.setOutputFormatClass(TextOutputFormat.class);

            // Set the output key and value types
            job.setOutputKeyClass(Text.class);
            job.setOutputValueClass(IntWritable.class);

            // Set the input and output paths
            FileInputFormat.addInputPath(job, new Path(args[0]));
            FileOutputFormat.setOutputPath(job, new Path(args[1]));

            System.exit(job.waitForCompletion(true) ? 0 : 1);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}

