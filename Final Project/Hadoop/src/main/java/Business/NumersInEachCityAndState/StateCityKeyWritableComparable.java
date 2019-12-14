package Business.NumersInEachCityAndState;

import org.apache.hadoop.io.WritableComparable;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public class StateCityKeyWritableComparable implements WritableComparable<StateCityKeyWritableComparable> {

    private String state;
    private String city;

    public StateCityKeyWritableComparable() {
    }

    public StateCityKeyWritableComparable(String state, String city) {
        this.state = state;
        this.city = city;
    }

    @Override
    public int compareTo(StateCityKeyWritableComparable o) {
        if (state.compareTo(o.state) != 0) {
            return state.compareTo(o.state);
        }
        return city.compareTo(o.city);
    }

    @Override
    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(state);
        dataOutput.writeUTF(city);
    }

    @Override
    public void readFields(DataInput dataInput) throws IOException {
        state = dataInput.readUTF();
        city = dataInput.readUTF();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return state + "\t" + city;
    }
}
