package Business.NumersInEachCityAndState;


import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Partitioner;

public class NaturalKeyPartitioner extends Partitioner<StateCityKeyWritable, IntWritable> {

    @Override
    public int getPartition(StateCityKeyWritable key, IntWritable value, int numPartitions) {
        return key.getState().hashCode() % numPartitions;
    }
}
