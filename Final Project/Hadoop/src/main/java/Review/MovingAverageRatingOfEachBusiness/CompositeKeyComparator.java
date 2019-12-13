package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.io.WritableComparable;
import org.apache.hadoop.io.WritableComparator;

public class CompositeKeyComparator extends WritableComparator {

    public CompositeKeyComparator() {
        super(CompositeKey.class, true);
    }

    public int compare(WritableComparable a, WritableComparable b) {
        CompositeKey ck1 = (CompositeKey) a;
        CompositeKey ck2 = (CompositeKey) b;

        if (ck1.getBusinessId().compareTo(ck2.getBusinessId()) != 0) {
            return ck1.getBusinessId().compareTo(ck2.getBusinessId());
        }
        return Long.compare(ck1.getTimestamp(), ck2.getTimestamp());
    }
}
