package lab2;

import org.apache.hadoop.io.WritableComparable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public class CompositeKeyWritable implements WritableComparable {

    private String zip;
    private String bikeId;

    public CompositeKeyWritable() {}

    public CompositeKeyWritable(String zip, String bikeId) {
        this.zip = zip;
        this.bikeId = bikeId;
    }

    public void readFields(DataInput dataInput) throws IOException {
        bikeId = dataInput.readUTF();
        zip = dataInput.readUTF();
    }

    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(bikeId);
        dataOutput.writeUTF(zip);
    }

    public int compareTo(Object o) {
        CompositeKeyWritable ck = (CompositeKeyWritable) o;
        String thisValue = zip;
        String otherValue = ck.getZip();
        return thisValue.compareTo(otherValue);
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getBikeId() {
        return bikeId;
    }

    public void setBikeId(String bikeId) {
        this.bikeId = bikeId;
    }

    public String toString() {
        return bikeId + " " + zip;
    }
}
