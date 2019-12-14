package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.io.WritableComparable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

public class CompositeKey implements WritableComparable<CompositeKey> {

    private String businessId;
    private long timestamp;

    public CompositeKey() {
    }

    public CompositeKey(String businessId, long timestamp) {
        this.businessId = businessId;
        this.timestamp = timestamp;
    }

    @Override
    public int compareTo(CompositeKey o) {
        if (businessId.compareTo(o.getBusinessId()) != 0) {
            return businessId.compareTo(o.getBusinessId());
        }
        return Long.compare(timestamp, o.getTimestamp());
    }

    @Override
    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(businessId);
        dataOutput.writeLong(timestamp);
    }

    @Override
    public void readFields(DataInput dataInput) throws IOException {
        businessId = dataInput.readUTF();
        timestamp = dataInput.readLong();
    }

    public String getBusinessId() {
        return businessId;
    }

    public void setBusinessId(String businessId) {
        this.businessId = businessId;
    }

    public long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public String toString() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = sdf.format(new Date(timestamp));
        return businessId + "\t" + dateString;
    }
}
