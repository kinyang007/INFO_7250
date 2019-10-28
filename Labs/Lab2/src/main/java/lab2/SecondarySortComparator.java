package lab2;

import org.apache.hadoop.io.WritableComparator;
import org.apache.hadoop.io.WritableComparable;

public class SecondarySortComparator extends WritableComparator {

    public SecondarySortComparator() {
        super(CompositeKeyWritable.class, true);
    }

    public int compare(WritableComparable a, WritableComparable b) {
        CompositeKeyWritable ck1 = (CompositeKeyWritable) a;
        CompositeKeyWritable ck2 = (CompositeKeyWritable) b;
        String zip1 = ck1.getZip();
        String zip2 = ck2.getZip();
        return -1 * zip1.compareTo(zip2);   // desc order
    }

}
