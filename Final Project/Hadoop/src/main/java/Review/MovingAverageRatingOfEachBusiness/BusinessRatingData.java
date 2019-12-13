package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.io.WritableComparable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BusinessRatingData implements WritableComparable<BusinessRatingData> {

    private String businessName;
    private long timestamp;
    private double rate;

    public BusinessRatingData() {
    }

    public BusinessRatingData(long timestamp, double rate) {
        businessName = "empty";
        this.timestamp = timestamp;
        this.rate = rate;
    }

    public BusinessRatingData(String businessName) {
        this.businessName = businessName;
    }

    @Override
    public int compareTo(BusinessRatingData o) {
        return Long.compare(timestamp, o.getTimestamp());
    }

    @Override
    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeLong(timestamp);
        dataOutput.writeDouble(rate);
    }

    @Override
    public void readFields(DataInput dataInput) throws IOException {
        timestamp = dataInput.readLong();
        rate = dataInput.readDouble();
    }

    public String getBusinessName() {
        return businessName;
    }

    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    public long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = sdf.format(new Date(timestamp));
        return dateString + "\t" + rate;
    }
}
