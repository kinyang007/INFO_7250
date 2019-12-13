package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.mapreduce.Partitioner;

public class NaturalKeyPartitioner extends Partitioner<CompositeKey, BusinessRatingData> {

    @Override
    public int getPartition(CompositeKey key, BusinessRatingData value, int numPartitions) {
        return key.getBusinessId().hashCode() % numPartitions;
    }

}
