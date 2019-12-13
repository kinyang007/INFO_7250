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

        if (ck1.getTableName().equals("Review") && ck2.getTableName().equals("Review")) {
            if (ck1.getBusinessId().compareTo(ck2.getBusinessId()) != 0) {
                return ck1.getBusinessId().compareTo(ck2.getBusinessId());
            }
            return Long.compare(ck1.getTimestamp(), ck2.getTimestamp());
        } else if (ck1.getTableName().equals("Business") && ck2.getTableName().equals("Business")) {
            if (ck1.getBusinessId().compareTo(ck2.getBusinessId()) != 0) {
                return ck1.getBusinessId().compareTo(ck2.getBusinessId());
            }
            return ck1.getBusinessName().compareTo(ck2.getTableName());
        } else {
            return ck1.getTableName().compareTo(ck2.getTableName());
        }
    }
}
