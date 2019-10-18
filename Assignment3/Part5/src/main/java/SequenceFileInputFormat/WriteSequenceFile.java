package SequenceFileInputFormat;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IOUtils;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.SequenceFile;
import org.apache.hadoop.io.Text;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;

public class WriteSequenceFile {
    public static void main(String[] args) throws IOException {
        Configuration conf = new Configuration();
        FileSystem local = FileSystem.getLocal(conf);
        FileSystem hdfs = FileSystem.get(URI.create(args[1]), conf);

        Path localFile = new Path(args[0]);
        Path seqFile = new Path(args[1]);

        SequenceFile.Writer write = null;
        try {
            write = SequenceFile.createWriter(hdfs, conf, seqFile, Text.class, IntWritable.class);
            FSDataInputStream in = local.open(localFile);
            BufferedReader buffer = new BufferedReader(new InputStreamReader(in));
            String line;
            while ((line = buffer.readLine()) != null) {
                String[] data = line.split(" ");
                Text ip = new Text(data[0]);
                IntWritable num = new IntWritable(1);
                write.append(ip, num);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            IOUtils.closeStream(write);
        }
    }
}
