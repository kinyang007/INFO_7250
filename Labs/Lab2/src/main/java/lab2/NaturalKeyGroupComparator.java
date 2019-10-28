package lab2;

import org.apache.hadoop.io.WritableComparator;
import org.apache.hadoop.io.WritableComparable;

public class NaturalKeyGroupComparator extends WritableComparator {

    public NaturalKeyGroupComparator() {
        super(CompositeKeyWritable.class, true);
    }

    public int compare(WritableComparable a, WritableComparable b) {
        CompositeKeyWritable ck1 = (CompositeKeyWritable) a;
        CompositeKeyWritable ck2 = (CompositeKeyWritable) b;
        String bikeId1 = ck1.getBikeId();
        String bikeId2 = ck2.getBikeId();
        return bikeId1.compareTo(bikeId2);
    }

}
