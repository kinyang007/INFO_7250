package Business.Top5RatedBusinessInEachState;

import org.apache.hadoop.io.WritableComparable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public class BusinessWritable implements WritableComparable<BusinessWritable> {

    private String businessId;
    private String businessName;
    private String state;
    private double rate;

    public BusinessWritable() {
    }

    public BusinessWritable(String businessId, String businessName, String state, double rate) {
        this.businessId = businessId;
        this.businessName = businessName;
        this.state = state;
        this.rate = rate;
    }

    @Override
    public int compareTo(BusinessWritable o) {
        if (rate != o.getRate()) {
            return o.getRate() > rate ? 1 : -1;
        }
        return businessName.compareTo(o.getBusinessName());
    }

    @Override
    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(businessId);
        dataOutput.writeUTF(businessName);
        dataOutput.writeUTF(state);
        dataOutput.writeDouble(rate);
    }

    @Override
    public void readFields(DataInput dataInput) throws IOException {
        businessId = dataInput.readUTF();
        businessName = dataInput.readUTF();
        state = dataInput.readUTF();
        rate = dataInput.readDouble();
    }

    public String getBusinessId() {
        return businessId;
    }

    public void setBusinessId(String businessId) {
        this.businessId = businessId;
    }

    public String getBusinessName() {
        return businessName;
    }

    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return "{businessId: '" + businessId + '\'' +
                ", businessName: '" + businessName + '\'' +
                ", state: '" + state + '\'' +
                ", rate: " + rate +
                '}';
    }
}
