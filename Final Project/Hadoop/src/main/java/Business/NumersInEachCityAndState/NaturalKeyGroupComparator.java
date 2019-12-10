package Business.NumersInEachCityAndState;

import org.apache.hadoop.io.WritableComparator;

public class NaturalKeyGroupComparator extends WritableComparator {

    public NaturalKeyGroupComparator() {
        super(StateCityKeyWritable.class, true);
    }

    int compare(StateCityKeyWritable sckw1, StateCityKeyWritable sckw2) {
        String state1 = sckw1.getState();
        String state2 = sckw2.getState();
        return state1.compareTo(state2);
    }
}
