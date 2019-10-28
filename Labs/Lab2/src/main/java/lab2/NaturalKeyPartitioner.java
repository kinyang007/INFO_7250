package lab2;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Partitioner;

public class NaturalKeyPartitioner extends Partitioner<CompositeKeyWritable, IntWritable> {
    public int getPartition(CompositeKeyWritable key, IntWritable value, int numPartitions) {
        return key.getBikeId().hashCode() % numPartitions;
    }
}
