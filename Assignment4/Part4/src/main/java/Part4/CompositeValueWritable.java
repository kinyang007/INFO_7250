package Part4;

import org.apache.hadoop.io.Writable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public class CompositeValueWritable implements Writable {

    private double stockPriceAdjClose;
    private int stockVolume;
    private String result;

    public CompositeValueWritable() {}

    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeDouble(stockPriceAdjClose);
        dataOutput.writeInt(stockVolume);
        dataOutput.writeUTF(result);
    }

    public void readFields(DataInput dataInput) throws IOException {
        stockPriceAdjClose = dataInput.readDouble();
        stockVolume = dataInput.readInt();
        result = dataInput.readUTF();
    }

    public double getStockPriceAdjClose() {
        return stockPriceAdjClose;
    }

    public void setStockPriceAdjClose(double stockPriceAdjClose) {
        this.stockPriceAdjClose = stockPriceAdjClose;
    }

    public int getStockVolume() {
        return stockVolume;
    }

    public void setStockVolume(int stockVolume) {
        this.stockVolume = stockVolume;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return stockPriceAdjClose + '\t' + stockVolume + '\t' + result;
    }
}
