package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.io.WritableComparable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.*;

public class CompositeKey implements WritableComparable<CompositeKey> {

    private String businessId;
    private Date time;

    @Override
    public int compareTo(CompositeKey o) {
        return 0;
    }

    @Override
    public void write(DataOutput dataOutput) throws IOException {

    }

    @Override
    public void readFields(DataInput dataInput) throws IOException {

    }
}
