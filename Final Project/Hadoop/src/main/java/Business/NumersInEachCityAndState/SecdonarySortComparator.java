package Business.NumersInEachCityAndState;

import org.apache.hadoop.io.WritableComparator;

public class SecdonarySortComparator extends WritableComparator {

    public SecdonarySortComparator() {
        super(StateCityKeyWritable.class, true);
    }

    public int compare(StateCityKeyWritable sckw1, StateCityKeyWritable sckw2) {
        String city1 = sckw1.getCity();
        String city2 = sckw2.getCity();
        return city1.compareTo(city2);
    }

}
