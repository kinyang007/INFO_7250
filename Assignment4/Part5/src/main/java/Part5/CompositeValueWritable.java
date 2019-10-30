package Part5;


import org.apache.hadoop.io.Writable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public class CompositeValueWritable implements Writable {

    private double average;
    private int count;

    public CompositeValueWritable() {}

    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeDouble(average);
        dataOutput.writeInt(count);
    }

    public void readFields(DataInput dataInput) throws IOException {
        average = dataInput.readDouble();
        count = dataInput.readInt();
    }

    public double getAverage() {
        return average;
    }

    public void setAverage(double average) {
        this.average = average;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return average + "";
    }
}
