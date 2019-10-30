package Part3;

import org.apache.hadoop.io.Writable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public class CompositeValueWritable implements Writable {

    private String dateOfMaxStockVolume;
    private String dateOfMinStockVolume;
    private double maxStockPriceAdjClose;
    private int maxStockVolume;
    private int minStockVolume;

    public CompositeValueWritable() {}

    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(dateOfMaxStockVolume);
        dataOutput.writeUTF(dateOfMinStockVolume);
        dataOutput.writeDouble(maxStockPriceAdjClose);
        dataOutput.writeInt(maxStockVolume);
        dataOutput.writeInt(minStockVolume);
    }

    public void readFields(DataInput dataInput) throws IOException {
        dateOfMaxStockVolume = dataInput.readUTF();
        dateOfMinStockVolume = dataInput.readUTF();
        maxStockPriceAdjClose = dataInput.readDouble();
        maxStockVolume = dataInput.readInt();
        minStockVolume = dataInput.readInt();
    }

    public String getDateOfMaxStockVolume() {
        return dateOfMaxStockVolume;
    }

    public void setDateOfMaxStockVolume(String dateOfMaxStockVolume) {
        this.dateOfMaxStockVolume = dateOfMaxStockVolume;
    }

    public String getDateOfMinStockVolume() {
        return dateOfMinStockVolume;
    }

    public void setDateOfMinStockVolume(String dateOfMinStockVolume) {
        this.dateOfMinStockVolume = dateOfMinStockVolume;
    }

    public double getMaxStockPriceAdjClose() {
        return maxStockPriceAdjClose;
    }

    public void setMaxStockPriceAdjClose(double maxStockPriceAdjClose) {
        this.maxStockPriceAdjClose = maxStockPriceAdjClose;
    }

    public int getMaxStockVolume() {
        return maxStockVolume;
    }

    public void setMaxStockVolume(int maxStockVolume) {
        this.maxStockVolume = maxStockVolume;
    }

    public int getMinStockVolume() {
        return minStockVolume;
    }

    public void setMinStockVolume(int minStockVolume) {
        this.minStockVolume = minStockVolume;
    }

    @Override
    public String toString() {
        return dateOfMaxStockVolume + '\t' + dateOfMinStockVolume + '\t' + maxStockPriceAdjClose;
    }
}
